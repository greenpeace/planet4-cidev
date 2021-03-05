<?php
$I = new AcceptanceTester($scenario);
$I->amGoingTo('Check navbar has right design');

$I->amOnPage('/');

$headerBackground = $I->getCSSValue('nav#header', 'background');

$I->assertEquals('rgba(7, 67, 101, 0.8) none repeat scroll 0% 0% / auto padding-box border-box', $headerBackground);
