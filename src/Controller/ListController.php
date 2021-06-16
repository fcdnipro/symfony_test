<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class ListController extends AbstractController
{
    /**
     * @Route("/list", name="list")
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        return $this->render('list/index.html.twig');
    }
}
