<?php

namespace App\Controller;

use App\Entity\Message;
use App\Form\MessageType;
use Symfony\Component\Mime\Email;
use App\Repository\DemandRepository;
use App\Repository\MessageRepository;
use App\Repository\DemandRelationRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route('/message')]
class MessageController extends AbstractController
{
    // #[Route('/', name: 'app_message_index', methods: ['GET'])]
    // public function index(MessageRepository $messageRepository): Response
    // {
    //     return $this->render('message/index.html.twig', [
    //         'messages' => $messageRepository->findAll(),
    //     ]);
    // }





    #[Route('/', name: 'app_my_message', methods: ['GET'])]
    public function myMessages(Request $request, MessageRepository $messageRepository, Security $security): Response
    { 
  
        
        $demand_relation_id = $request->query->get('id_demand_relation');
        


        return $this->render('message/index.html.twig', [
            'messages' => $messageRepository->findby(['demandRelation' => $demand_relation_id,])
        ]);
    }





    #[Route('/new', name: 'app_message_new', methods: ['GET', 'POST'])]
    public function new(Request $request, DemandRelationRepository $demandRelationRepository, DemandRepository $demandRepository, MessageRepository $messageRepository, Security $security, MailerInterface $mailer): Response
    {
            
            $user = $security->getUser();
            $otherUser = $request->request->get('otherUser');
           
            $demandId = $request->request->get('demandId');
            $text = $request->request->get('text');
            $demandRelation = $demandRelationRepository->findOneBy(['demand' => $demandId, 'user' => [$user, $otherUser] ]);
           
           
            $demand = $demandRepository->findOneBy(['id' => $demandId,]);
            $demandEmail = $demand->getUser()->getEmail();
            if($request->request->get("email"))
            {    
                // dd("email");

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
            
            }
            elseif($request->request->get("hsMessage")){
                
                // dd("hsMessage");
                $message = new Message();
                $message->setText($text);
                $message->setUser($user);
                $message->setDemandRelation($demandRelation);
                $messageRepository->save($message, true);
            }
            
        return $this->redirectToRoute('app_demand_show', ['id' => $demandId,], Response::HTTP_SEE_OTHER); 
        
        // $message = new Message();
        // $form = $this->createForm(MessageType::class, $message);
        // $form->handleRequest($request);

        // if ($form->isSubmitted() && $form->isValid()) {
        //     $messageRepository->save($message, true);

        //     return $this->redirectToRoute('app_message_index', [], Response::HTTP_SEE_OTHER);
        // }

        // return $this->renderForm('message/new.html.twig', [
        //     'message' => $message,
        //     'form' => $form,
        // ]);
    }

    #[Route('/{id}', name: 'app_message_show', methods: ['GET'])]
    public function show(Message $message): Response
    {
        return $this->render('message/show.html.twig', [
            'message' => $message,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_message_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Message $message, MessageRepository $messageRepository): Response
    {
        $form = $this->createForm(MessageType::class, $message);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $messageRepository->save($message, true);

            return $this->redirectToRoute('app_message_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('message/edit.html.twig', [
            'message' => $message,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_message_delete', methods: ['POST'])]
    public function delete(Request $request, Message $message, MessageRepository $messageRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$message->getId(), $request->request->get('_token'))) {
            $messageRepository->remove($message, true);
        }

        return $this->redirectToRoute('app_message_index', [], Response::HTTP_SEE_OTHER);
    }
}
