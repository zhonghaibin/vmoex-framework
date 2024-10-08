<?php

namespace Yeskn\MainBundle\Form;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Yeskn\MainBundle\Entity\Post;
use Yeskn\MainBundle\Entity\Tab;
use Yeskn\MainBundle\Entity\User;
use Yeskn\MainBundle\Form\Type\ImageInputType;

class PostType extends AbstractType
{
    public function  buildForm(FormBuilderInterface $builder, array $options)
    {
        /** @var Post $entity */
        $entity = $builder->getData();

        $builder
           ->add('title',null, array('attr' => array('autofocus' => true), 'label' => '标题',))
           ->add('content',null, array('attr' => array('rows' => 15), 'label' => '内容','required'=>false))
           ->add('tab', EntityType::class, [
                'class' => Tab::class,
                'choice_label' => 'name',
                'choice_value' => 'id',
                'label' => '板块'
           ])
           ->add('author', EntityType::class, [
               'class' => User::class,
               'choice_label' => 'nickname',
               'choice_value' => 'id',
               'label' => '作者'
           ])
            ->add('status', ChoiceType::class, [
                'choices' => [
                    '已发布' => 'published',
                    '草稿' => 'draft',
                ],
                'label' => '状态',
                'expanded' => true,
                'multiple' => false,
            ])
           ->add('views', TextType::class, ['label' => '点击'])
           ->add('isTop',CheckboxType::class,array('label' => '置顶','required'=>false))
       ;
    }

    /**
     * @inheritdoc
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
       $resolver->setDefaults(array(
           'data_class' => 'Yeskn\MainBundle\Entity\Post',
       ));
    }
}
