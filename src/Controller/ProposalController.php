<?php

namespace App\Controller;

use App\Entity\Proposal;
use App\Form\ProposalType;
use App\Repository\ProposalRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/proposal')]
class ProposalController extends AbstractController
{
    #[Route('/', name: 'app_proposal_index', methods: ['GET'])]
    public function index(ProposalRepository $proposalRepository): Response
    {
        return $this->render('proposal/index.html.twig', [
            'proposals' => $proposalRepository->findAll(),
        ]);
    }

    #[Route('/mes_propositions', name: 'my_proposals', methods: ['GET'])]
    public function proposalUser(ProposalRepository $proposalRepository): Response
    {
        // Get logged user's object
        $user = (object) $this->getUser();
        
        return $this->render('proposal/my_proposals.html.twig', [
            'proposals' => $proposalRepository->findBy(['user' => $user]),
        ]);
    }

    #[Route('/new', name: 'app_proposal_new', methods: ['GET', 'POST'])]
    public function new(Request $request, ProposalRepository $proposalRepository): Response
    {
        $proposal = new Proposal();
        $form = $this->createForm(ProposalType::class, $proposal);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $proposalRepository->save($proposal, true);

            return $this->redirectToRoute('app_proposal_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('proposal/new.html.twig', [
            'proposal' => $proposal,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_proposal_show', methods: ['GET'])]
    public function show(Proposal $proposal): Response
    {
        return $this->render('proposal/show.html.twig', [
            'proposal' => $proposal,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_proposal_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Proposal $proposal, ProposalRepository $proposalRepository): Response
    {
        $form = $this->createForm(ProposalType::class, $proposal);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $proposalRepository->save($proposal, true);

            return $this->redirectToRoute('app_proposal_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('proposal/edit.html.twig', [
            'proposal' => $proposal,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_proposal_delete', methods: ['POST'])]
    public function delete(Request $request, Proposal $proposal, ProposalRepository $proposalRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$proposal->getId(), $request->request->get('_token'))) {
            $proposalRepository->remove($proposal, true);
        }

        return $this->redirectToRoute('app_proposal_index', [], Response::HTTP_SEE_OTHER);
    }
}
