<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /*______________________________________________________________________________

                                        HOME
     ↓↓↓↓↓↓↓↓↓↓↓↓↓                                                       ↓↓↓↓↓↓↓↓↓↓↓↓                                   
    _________________________________________________________________________________*/    
    #[Route('/', name: 'app_home')]
    public function index(): Response
    {
        return $this->redirectToRoute('app_demand_index');
        // return $this->render('home/index.html.twig', [
        //     'controller_name' => 'HomeController',
        // ]);
    }
}
