<?php

namespace App\Controller;

use App\Entity\Demand;
use App\Entity\DemandRelation;
use App\Form\DemandRelationType;
use Symfony\Component\Mime\Email;
use App\Repository\DemandRepository;
use App\Repository\DemandRelationRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Mailer\MailerInterface;

#[Route('/demand/relation')]
class DemandRelationController extends AbstractController
{
    #[Route('/', name: 'app_demand_relation_index', methods: ['GET'])]
    public function index(DemandRelationRepository $demandRelationRepository): Response
    {
        return $this->render('demand_relation/index.html.twig', [
            'demand_relations' => $demandRelationRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_demand_relation_new', methods: ['GET','POST'])]
    public function new(Request $request, DemandRelationRepository $demandRelationRepository, DemandRepository $demandRepository, Security $security, MailerInterface $mailer): Response
    {
        
        $user = $security->getUser();
        $demandId = $request->get('demandId');
        $text = $request->get('text');
        $demand = $demandRepository->findOneBy(['id' => $demandId,]);
        $demandEmail = $demand->getUser()->getEmail();

        $demandRelation = new DemandRelation();
        if (!$demandRelationRepository->findOneBy(['user' => $user,'demand' => $demandId,]))
        {
            $email = (new Email())
            ->from('hello@example.com')      // For security reason, put an exemple on purpose to not put the actual email on gitHub. It works fine like this.
            ->to($demandEmail)
            //->cc('cc@example.com')
            //->bcc('bcc@example.com')
            //->replyTo('fabien@example.com')
            //->priority(Email::PRIORITY_HIGH)
            ->subject('Help & Share, '.$user. ' a répondu à votre demande.')
            ->text($text)
            ->html($text);

            $mailer->send($email);
            
            $demandRelation->setdemand($demandRepository->find($demandId));
            $demandRelation->setUser($user);

            // add et save c est quoi la diff??
            $demandRelationRepository->save($demandRelation, true);

        }         
        return $this->redirectToRoute('app_demand_show', ['id' => $demandId,], Response::HTTP_SEE_OTHER); 
    }

    #[Route('/{id}', name: 'app_demand_relation_show', methods: ['GET'])]
    public function show(DemandRelation $demandRelation): Response
    {
        return $this->render('demand_relation/show.html.twig', [
            'demand_relation' => $demandRelation,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_demand_relation_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, DemandRelation $demandRelation, DemandRelationRepository $demandRelationRepository): Response
    {
        $form = $this->createForm(DemandRelationType::class, $demandRelation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $demandRelationRepository->save($demandRelation, true);

            return $this->redirectToRoute('app_demand_relation_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('demand_relation/edit.html.twig', [
            'demand_relation' => $demandRelation,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_demand_relation_delete', methods: ['POST'])]
    public function delete(Request $request, DemandRelation $demandRelation, DemandRelationRepository $demandRelationRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$demandRelation->getId(), $request->request->get('_token'))) {
            $demandRelationRepository->remove($demandRelation, true);
        }

        return $this->redirectToRoute('app_demand_relation_index', [], Response::HTTP_SEE_OTHER);
    }
}
