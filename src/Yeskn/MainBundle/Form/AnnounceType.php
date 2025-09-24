<?php

/**
 * This file is part of project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-09-15 21:19:45
 */

namespace Yeskn\MainBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Yeskn\MainBundle\Entity\Announce;
use Yeskn\MainBundle\Form\Type\TinyHtmlTextareaType;

class AnnounceType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('zh_CN', TinyHtmlTextareaType::class, [
            'label' => '简体中文',
            'height' => '100',
            'required' => true,
        ]);
        $builder->add('en', TinyHtmlTextareaType::class, [
            'label' => '英文内容',
            'height' => '100',
            'required' => true,
        ]);
        $builder->add('jp', TinyHtmlTextareaType::class, [
            'label' => '日语内容',
            'height' => '100',
            'required' => true,
        ]);
        $builder->add('zh_TW', TinyHtmlTextareaType::class, [
            'label' => '繁体中文',
            'height' => '100',
            'required' => true,
        ]);
        $builder->add('show', CheckboxType::class, [
            'label' => '启用',
            'required' => false
        ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Announce::class,
        ]);
    }
}
