<?php
// src/Controller/SecurityController.php
namespace App\Controller;

use App\Entity\User;
use Lexik\Bundle\JWTAuthenticationBundle\Services\JWTTokenManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;


class SecurityController extends AbstractController
{
    /**
     * @Route("/", name="app_login")
     * @return Response
     */
    public function login( AuthenticationUtils $authenticationUtils): Response
    {
          $error = $authenticationUtils->getLastAuthenticationError();
          $lastUsername = $authenticationUtils->getLastUsername();

            return $this->render('security/login.html.twig', ['last_username' => $lastUsername,'error' => $error]);
    }
    /**
     * @Route("/api/login_check", name="app_get_token")
     * @param User $user
     * @param JWTTokenManagerInterface $JWTManager
     * @return JsonResponse
     */
    public function getUserToken(User $user ,JWTTokenManagerInterface $JWTManager): JsonResponse
    {
          return new JsonResponse(['token' => $JWTManager->create($user)]);
    }
    /**
     * @Route("/logout", name="app_logout")
     */
    public function logout()
    {
        throw new \Exception('This method can be blank - it will be intercepted by the logout key on your firewall');
    }
}