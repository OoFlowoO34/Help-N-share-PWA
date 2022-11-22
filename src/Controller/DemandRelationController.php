<?php

namespace App\Controller;

use App\Entity\DemandRelation;
use App\Form\DemandRelationType;
use App\Repository\DemandRepository;
use App\Repository\DemandRelationRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route('/demand_relation')]
class DemandRelationController extends AbstractController
{

    /*______________________________________________________________________________

                                    MY DEMAND RELATIONS
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓                                   
    _________________________________________________________________________________*/
    /**
     * MY DEMAND RELATIONS
     *
     * @param DemandRelationRepository $demandRelationRepository
     * @param DemandRepository $demandRepository
     * @param Security $security
     * @return Response
     */
    #[Route('/', name: 'app_my_demand_relations', methods: ['GET'])]
    public function myDemandRelations(DemandRelationRepository $demandRelationRepository, DemandRepository $demandRepository, Security $security):Response
    {

        $user = $security->getUser();
        $demands = $demandRepository->findBy(['user'=> $user]);

        return $this->render('demand_relation/index.html.twig', [
            'demand_relations' => $demandRelationRepository->findRelations($user,$demands),            
        ]);
    }

    /*______________________________________________________________________________

                                        NEW
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓                                   
    _________________________________________________________________________________*/
    /**
     * NEW
     *
     * @param Request $request
     * @param DemandRelationRepository $demandRelationRepository
     * @param DemandRepository $demandRepository
     * @param Security $security
     * @return void
     */
    #[Route('/new', name: 'app_demand_relation_new', methods: ['GET','POST'])]
    public function new(Request $request, DemandRelationRepository $demandRelationRepository, DemandRepository $demandRepository, Security $security)
    {
        
        $user = $security->getUser();
        $demandId = $request->get('demandId');
     
        // Check if user isn't already related with the demand.
        if (!$demandRelationRepository->findOneBy(['user' => $user,'demand' => $demandId,]))
        {      
            $demandRelation = new DemandRelation();  
            $demandRelation->setdemand($demandRepository->find($demandId));
            $demandRelation->setUser($user);

            // add et save c est quoi la diff??
            $demandRelationRepository->save($demandRelation, true);

        }
     
            $response = $this->forward('App\Controller\MessageController::new', [
            'demandRelationId' => $demandRelation->getId(),
        ]); 


        return $response;
    }


    /*______________________________________________________________________________

                                        SHOW
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓                                   
    _________________________________________________________________________________*/
    #[Route('/{id}', name: 'app_demand_relation_show', methods: ['GET'])]
    public function show(DemandRelation $demandRelation)
    {
        return $this->render('demand_relation/show.html.twig', [
            'demand_relation' => $demandRelation,
        ]);
    }


        
    /*______________________________________________________________________________

                                        EDIT
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓                                   
    _________________________________________________________________________________*/
    #[Route('/{id}/edit', name: 'app_demand_relation_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, DemandRelation $demandRelation, DemandRelationRepository $demandRelationRepository)
    {
        $form = $this->createForm(DemandRelationType::class, $demandRelation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $demandRelationRepository->save($demandRelation, true);

            return $this->redirectToRoute('app_demand_relation_index');
        }

        return $this->renderForm('demand_relation/edit.html.twig', [
            'demand_relation' => $demandRelation,
            'form' => $form,
        ]);
    }

    // /*______________________________________________________________________________

    //                                     DELETE
    //  ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓                                   
    // _________________________________________________________________________________*/
    // #[Route('/{id}', name: 'app_demand_relation_delete', methods: ['POST'])]
    // public function delete(Request $request, DemandRelation $demandRelation, DemandRelationRepository $demandRelationRepository): Response
    // {
    //     if ($this->isCsrfTokenValid('delete'.$demandRelation->getId(), $request->request->get('_token'))) {
    //         $demandRelationRepository->remove($demandRelation, true);
    //     }

    //     return $this->redirectToRoute('app_demand_relation_index', [], Response::HTTP_SEE_OTHER);
    // }
}
