<?php
// api/src/Controller/CreateMediaObjectAction.php

namespace App\Controller;

use App\Entity\Company;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\BadRequestHttpException;

final class CreateMediaObjectAction
{
    public function __invoke(Request $request): Company
    {
        $uploadedFile = $request->files->get('file');
        if (!$uploadedFile) {
            throw new BadRequestHttpException('"file" is required');
        }

        $company = new Company();
        $company->setEmail($request->get('email'));
        $company->setName($request->get('name'));
        $company->setWebsite($request->get('website'));
        $company->imageFile = $uploadedFile;

        return $company;
    }
}