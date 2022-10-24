<?php 

namespace App\Service;


use Symfony\Component\String\Slugger\SluggerInterface;

use Symfony\Component\HttpFoundation\File\Exception\FileException;

use Symfony\Component\HttpFoundation\File\UploadedFile;

class FileUploader
{
    private $targetDirectory;
    private $slugger;
    
    public function __construct($targetDirectory, SluggerInterface $slugger)
    {
        $this->targetDirectory = $targetDirectory;
        $this->slugger = $slugger;
    }

    // Store the photo and return a new uniq name.
    public function upload(UploadedFile $photoFile)
    {
    $originalFilename = pathinfo($photoFile->getClientOriginalName(), PATHINFO_FILENAME);
    // This is needed to safely include the file name as part of the URL
    $safeFilename = $this->slugger->slug($originalFilename);
    // Give a new uniq name.
    $newFilename = $safeFilename.'-'.uniqid().'.'.$photoFile->guessExtension();

    // Move the photo to the directory where photos are stored
    try {
        $photoFile->move(
            $this->getTargetDirectory(),
            $newFilename
        );
    } catch (FileException $e) {
        // ... handle exception if something happens during photo upload
    }
        
    return $newFilename;
    }

    public function getTargetDirectory()
    {
        return $this->targetDirectory;
    }

}