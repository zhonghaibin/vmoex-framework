<?php

namespace Yeskn\MainBundle\Markdown;

use Knp\Bundle\MarkdownBundle\MarkdownParserInterface;
use League\CommonMark\MarkdownConverter;

class CommonMarkParser implements MarkdownParserInterface
{
    private $converter;

    public function __construct(MarkdownConverter $converter)
    {
        $this->converter = $converter;
    }

    public function transformMarkdown($text)
    {
        return $this->converter->convert($text)->getContent();
    }
}
