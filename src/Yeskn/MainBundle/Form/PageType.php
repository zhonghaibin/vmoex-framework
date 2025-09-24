<?php

/**
 * This file is part of project yeskn-studio/vmoex-framework.
 *
 * Author: Jake
 * Create: 2018-09-17 23:15:08
 */

namespace Yeskn\MainBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Yeskn\MainBundle\Entity\Page;
use Yeskn\MainBundle\Form\Type\TinyHtmlTextareaType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class PageType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('title', TextType::class, [
            'label' => '标题',
        ]);

        $builder->add('uri', TextType::class, [
            'label' => '路径'
        ]);

        $builder->add('status', CheckboxType::class, [
            'label' => '启用',
            'required' => false
        ]);

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
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Page::class
        ]);
    }
}
