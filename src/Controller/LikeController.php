<?php

namespace App\Controller;

use App\Entity\Like;
use App\Entity\User;
use App\Form\LikeType;
use Doctrine\ORM\EntityManager;
use App\Repository\LikeRepository;
use App\Repository\UserRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

#[Route('/like')]
class LikeController extends AbstractController
{
    #[Route('/', name: 'app_like_index', methods: ['GET'])]
    public function index(Request $request , LikeRepository $likeRepository, UserRepository $userRepository, Security $security): Response
    {
        $userLikedId = $request->query->get('id');
        $userLiked  = $userRepository->find(['id' => $userLikedId]);

        $userLiker = $security->getUser();

        // $isLiked=false;

        $likes = $likeRepository->findBy(['user_liked' => $userLiked]);

        $isLiked = $userLiked->isLikedByUser($userLiker);
        
    

        // foreach ($likes as $like) {
        //     if ($userLiker == $like->getUserLiker()) {
        //         $isLiked=true;
        //         $theLike = $like;
        //     }
        // }
  
        if($isLiked){
            $theLike = $likeRepository->findOneBy(['user_liked' => $userLiked, 'user_liker' => $userLiker]);
            $likeRepository->remove($theLike, true);

        }
        elseif(!$isLiked) {
            $like = new Like();
            $like->setUserLiked($userLiked);
            $like->setUserLiker($userLiker);
            $likeRepository->save($like, true);
        }

            

        $countLiked = $likeRepository->count(['user_liked' => $userLiked]);

            return $this->json([
                'message' => 'Like supprimé',
                'countLiked' =>  $countLiked,
                'isLiked' =>  $isLiked,
                ],200);
        
    }
    

    #[Route('/new', name: 'app_like_new', methods: ['GET', 'POST'])]
    public function new(Request $request, LikeRepository $likeRepository): Response
    {
        $like = new Like();
        $form = $this->createForm(LikeType::class, $like);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $likeRepository->save($like, true);

            return $this->redirectToRoute('app_like_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('like/new.html.twig', [
            'like' => $like,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_like_show', methods: ['GET'])]
    public function show(Like $like): Response
    {
        return $this->render('like/show.html.twig', [
            'like' => $like,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_like_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Like $like, LikeRepository $likeRepository): Response
    {
        $form = $this->createForm(LikeType::class, $like);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $likeRepository->save($like, true);

            return $this->redirectToRoute('app_like_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('like/edit.html.twig', [
            'like' => $like,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_like_delete', methods: ['POST'])]
    public function delete(Request $request, Like $like, LikeRepository $likeRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$like->getId(), $request->request->get('_token'))) {
            $likeRepository->remove($like, true);
        }

        return $this->redirectToRoute('app_like_index', [], Response::HTTP_SEE_OTHER);
    }
}
