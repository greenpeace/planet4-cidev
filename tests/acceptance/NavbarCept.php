<?php
$I = new AcceptanceTester($scenario);
$I->amGoingTo('Check navbar has right design');

$I->amOnPage('/');

$headerBackgroundColor = $I->getCSSValue('nav#header', 'background');

$I->assertEquals('var(--campaign_nav_color,rgba(7,67,101,.8))', $headerBackgroundColor);