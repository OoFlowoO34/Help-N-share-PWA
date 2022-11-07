<?php

namespace App\Controller;


use DateTime;
use App\Entity\Demand;
use App\Form\DemandType;
use App\Service\FileUploader;
use App\Repository\DemandRepository;
use App\Repository\DemandRelationRepository;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


#[Route('/demand')]
class DemandController extends AbstractController
{

    /*______________________________________________________________________________

                                        INDEX
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓                                   
    _________________________________________________________________________________*/
    #[Route('/home', name: 'app_demand_index', methods: ['GET','POST'])]
    public function index(Request $request,DemandRepository $demandRepository): Response
    {
        $request = Request::createFromGlobals();
        
        $search = $request->request->get('search');
       
        if ($search) {
            return $this->render('demand/index.html.twig', [
            'demands' => $demandRepository->search($search),
            ]);
        }
        return $this->render('demand/index.html.twig', [
            'demands' => $demandRepository->findAll(),
        ]);
    }


    /*______________________________________________________________________________

                                        MY_DEMANDS
    ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓	
    _________________________________________________________________________________*/
    #[Route('/mes_demandes', name: 'my_demands', methods: ['GET'])]
    public function demandUser(DemandRepository $demandRepository): Response
    {
        if ($this->getUser())
        {
        // Get logged user's object
        $user = (object) $this->getUser();
        return $this->render('demand/my_demands.html.twig', [
            'demands' => $demandRepository->findBy(['user'=> $user]),
        ]);
        }
        else
        {
            return $this->redirectToRoute('app_login');
        }
    }


    /*______________________________________________________________________________

                                        NEW
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓	
    _________________________________________________________________________________*/
    #[Route('/new', name: 'app_demand_new', methods: ['GET', 'POST'])]
    public function new(Request $request, DemandRepository $demandRepository, Security $security, FileUploader $fileUploader ): Response
    {
        $user = $security->getUser();
        $demand = new Demand();

        $form = $this->createForm(DemandType::class, $demand);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $demand->setUser($user);
            $demand->setDateCreated(new DateTime('Europe/Paris'));
            $demand->setDeleted(false);
            
            /*xxxxxxxxxxxxxxx
            x    PHOTO      x
            xxxxxxxxxxxxxxxx*/

            /** @var UploadedFile $photoFile */
            $photoFile = $form->get('photo')->getData();

            /*__________________________________________________________________________
            This condition is needed because the 'photo' field is not required
            so the photo file must be processed only when a file is uploaded         ↓ */
            if ($photoFile) {
                                
                // Updates the 'photoFilename' property to store the photo file name
                // instead of its contents
                $photoFileName = $fileUploader->upload($photoFile);

                $demand->setPhoto($photoFileName);
            }

            $demandRepository->save($demand, true);
            return $this->redirectToRoute('app_demand_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('demand/new.html.twig', [
            'demand' => $demand,
            'form' => $form,
        ]);
    }
    

    /*______________________________________________________________________________

                                        SHOW
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓                                   
    _________________________________________________________________________________*/
    // The parametter in the route must be 'id' so symfony will be able to get an instance from the request for "demand" 
    // Nous permet de ne pas mettre Request en paramettre et d'aller chercher la demande correspondante avec l'id :
    //$id = $request->get('id');
    //$demand = $demandRepository->findOneBy(['id'=>$id]);
    #[Route('/{id}', name: 'app_demand_show', methods: ['GET'])]
    public function show(Demand $demand, DemandRelationRepository $demandRelationRepository, DemandRepository $demandRepository, Security $security): Response
    {
        $user = $security->getUser();
        $demandId = $demand->getId();
        
        // $toto = $demandRepository->findBy(['user' => $user,'demandId' => $demandId ]);

        //find the connected user's demandRelation on this demand instance if there is one 
        //check if connnected user already contacted the demand
        $relations = $demandRelationRepository->findBy(['demand' => $demandId,]);

        //Check if the user connected is related to the demand
        $related = false;
        $relatedInfos = Null;
        foreach($relations as $relation){
           
            //If related user = user connected
            if($relation->getUser() == $user){
                $related = true;
                $relatedInfos = $relation;
                break;
            }
        }

        //Find the user's demand only if it is this demand instance
        //check if it is the connected user's demand
        $myDemand = $demandRepository->findOneBy(['user' => $user,'id' => $demandId,]);
 
        $mine = $myDemand ? true : false;

        if($relatedInfos){
            $replies = $relatedInfos->getMessages()->getValues();
        }
        else {
            $replies = Null;
        }
       

        return $this->render('demand/show.html.twig', [
            'demand' => $demand,
            'relations' => $relations,
            'related' => $related,
            'mine' => $mine,
            'replies' => $replies,
        ]);
    }


    /*______________________________________________________________________________

                                        EDIT
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓	
    _________________________________________________________________________________*/
    #[Route('/{id}/edit', name: 'app_demand_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Demand $demand, DemandRepository $demandRepository, Filesystem $filesystem, FileUploader $fileUploader ): Response
    {
       
        $form = $this->createForm(DemandType::class, $demand);
        $form->handleRequest($request);
      
        if ($form->isSubmitted() && $form->isValid()) {

            $demand->setDateModified(new DateTime('Europe/Paris'));

            /*xxxxxxxxxxxxxxx
            x    PHOTO      x
            xxxxxxxxxxxxxxxx*/

            /** @var UploadedFile $photoFile */
            $photoFile = $form->get('photo')->getData();

            /*__________________________________________________________________________
            This condition is needed because the 'photo' field is not required
            so the photo file must be processed only when a file is uploaded         ↓ */
            if ($photoFile) {
                
                // Get the route and the filename to delete
                $photo = $demand->getPhoto();
                $TargetDirectory = $fileUploader->getTargetDirectory();
                $photo_pointer = $TargetDirectory.'/'.$photo;

                // Delete the photo to be replaced, like unlink($photo_pointer);
                $filesystem->remove($photo_pointer);

                // To avoid logic in controllers, making them big, I extracted the upload logic to a separate service ( fileUploader ).
                // Store the photo and return a new uniq name.
                $photoFileName = $fileUploader->upload($photoFile);
                
                // Store the photo file name instead of its contents
                $demand->setPhoto($photoFileName);
            }

            $demandRepository->save($demand, true);
            
            return $this->redirectToRoute('app_demand_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('demand/edit.html.twig', [
            'demand' => $demand,
            'form' => $form,
        ]);
    }


    /*______________________________________________________________________________

                                        DELETE
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓                                   
    _________________________________________________________________________________*/
    #[Route('/{id}', name: 'app_demand_delete', methods: ['POST'])]
    public function delete(Request $request, Demand $demand, DemandRepository $demandRepository, FileUploader $fileUploader, Filesystem $filesystem): Response
    {
        $demandId = $request->get('id');
        $demand = $demandRepository->findOneBy(['id' => $demandId,]);

        /*xxxxxxxxxxxxxxx
        x    PHOTO      x
        xxxxxxxxxxxxxxxx*/
        // Get the route and the filename to delete
        $photo = $demand->getPhoto();
        $TargetDirectory = $fileUploader->getTargetDirectory();
        $photo_pointer = $TargetDirectory.'/'.$photo;

        // As it takes a lot of data space and we won't need it any more, 
        // Delete the photo, like unlink($photo_pointer);
        $filesystem->remove($photo_pointer);

        // Set Deleted to true so the demand disappear for the users 
        // but is still in the database for further uses;
        $demand->setDeleted(true);
        $demandRepository->save($demand, true);

        // if ($this->isCsrfTokenValid('delete'.$demand->getId(), $request->request->get('_token'))) {
            
        //     $demandRepository->remove($demand, true);
        // }

        return $this->redirectToRoute('app_demand_index', [], Response::HTTP_SEE_OTHER);
    }
}
