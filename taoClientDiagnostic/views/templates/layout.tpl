<?php
use oat\tao\helpers\Template;
use oat\tao\helpers\Layout;
use oat\tao\model\theme\Theme;
?><!doctype html>
<html class="no-js no-version-warning" lang="<?= tao_helpers_I18n::getLangCode() ?>">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?= Layout::getTitle() ?></title>
        <?= tao_helpers_Scriptloader::render() ?>
        <link rel="stylesheet" href="<?= Template::css('tao-main-style.css', 'tao') ?>" />
        <link rel="stylesheet" href="<?= Template::css('tao-3.css', 'tao') ?>" />
        <link rel="stylesheet" href="<?= Template::css('diagnostics.css', 'taoClientDiagnostic') ?>"/>
        <link rel="stylesheet" href="<?= Layout::getThemeStylesheet(Theme::CONTEXT_FRONTOFFICE) ?>" />
        <link rel="shortcut icon" href="<?= Template::img('favicon.ico', 'tao') ?>"/>
        <?= Layout::getAmdLoader(Template::js('loader/backoffice.min.js', 'tao'), 'controller/backoffice') ?>
    </head>
    <body class="diagnostic-scope">
<?php Template::inc('blocks/requirement-check.tpl', 'tao'); ?>

        <div class="content-wrap">
            <header class="dark-bar clearfix">
                <?= Layout::renderThemeTemplate(Theme::CONTEXT_BACKOFFICE, 'header-logo') ?>
                <div class="lft title-box"></div>
                <nav class="rgt">
                    <div class="settings-menu">
                        <ul class="clearfix plain">
                            <li data-control="home">
                                <a id="home" href="<?= _url('index', 'TestCenter', 'taoProctoring') ?>">
                                    <span class="icon-home"></span>
                                </a>
                            </li>
                            <li class="infoControl sep-before">
                                <span class="a">
                                    <span class="icon-test-taker"></span>
                                    <span><?= get_data('userLabel') ?></span>
                                </span>
                            </li>
                            <li class="infoControl sep-before" data-control="logout">
                                <a id="logout" class="" href="<?= _url('logout', 'Main', 'tao') ?>">
                                    <span class="icon-logout"></span>
                                    <span class="text"><?= __("Logout") ?></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <div id="feedback-box"></div>
            <?php Template::inc(get_data('content-template')); ?>
        </div>

        <?= Layout::renderThemeTemplate(Theme::CONTEXT_BACKOFFICE, 'footer') ?>

        <div class="loading-bar"></div>
    </body>
</html>
