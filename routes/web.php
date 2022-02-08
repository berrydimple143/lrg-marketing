<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SigninController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AdvertisementController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\PayerController;
use App\Http\Controllers\PayeeController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\CallController;
use RealRashid\SweetAlert\Facades\Alert;

Route::get('/', [SigninController::class, 'index'])->name('signin');
Route::post('/', [SigninController::class, 'signin'])->name('signin.post');
Route::get('/create-account-for-agent', [RegisterController::class, 'index'])->name('signup');
Route::post('/create-account-for-agent', [RegisterController::class, 'store'])->name('signup.post');

Route::middleware(['auth'])->group(function () {
	Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');    
	Route::get('/logout', [DashboardController::class, 'logout'])->name('logout');

	Route::get('/printtask', [TaskController::class, 'print'])->name('printtask');	
	Route::get('/tasks', [TaskController::class, 'index'])->name('task');
	Route::get('/my/tasks/{id}', [TaskController::class, 'show'])->name('my.task');
	Route::get('/change/response/{tid}/{val}', [TaskController::class, 'change'])->name('change.response');
	Route::get('/tasks/sort-by/{field}/{pos}', [TaskController::class, 'sort'])->name('task.sort');	
	Route::get('/task/add', [TaskController::class, 'create'])->name('task.add');
	Route::post('/task/post', [TaskController::class, 'store'])->name('task.post');
	Route::post('/task/search', [TaskController::class, 'search'])->name('task.search');
	Route::get('/task/edit/{id}', [TaskController::class, 'edit'])->name('task.edit');
	Route::put('/task/update/{id}', [TaskController::class, 'update'])->name('task.update');	
	Route::get('/task/delete/{id}', [TaskController::class, 'delete'])->name('task.delete');
	
	Route::get('/callbacks', [CallController::class, 'callback'])->name('call.back');
	Route::get('/callback/delete/{id}', [CallController::class, 'callback_delete'])->name('call.back.delete');
	Route::get('/callback/add/{id}', [CallController::class, 'callback_add'])->name('callback.add');

	Route::get('/phone/calls/{id}', [CallController::class, 'index'])->name('phone.calls');
	Route::get('/phone/call/add/{id}', [CallController::class, 'create'])->name('phone.add');
	Route::post('/phone/call/post', [CallController::class, 'store'])->name('phone.post');
	Route::post('/phone/call/search', [CallController::class, 'search'])->name('phone.search');
	Route::get('/phone/call/edit/{id}/{tid}', [CallController::class, 'edit'])->name('phone.edit');
	Route::put('/phone/call/update/{id}', [CallController::class, 'update'])->name('phone.update');	
	Route::get('/phone/call/delete/{id}/{tid}', [CallController::class, 'delete'])->name('phone.delete');
	Route::get('/phone/can/call/{phone}', [CallController::class, 'canCall'])->name('phone.can.call');


	Route::get('/clients', [ClientController::class, 'index'])->name('client');
	Route::get('/clients/sort-by/{field}/{pos}', [ClientController::class, 'sort'])->name('client.sort');	
	Route::get('/client/add', [ClientController::class, 'create'])->name('client.add');
	Route::post('/client/post', [ClientController::class, 'store'])->name('client.post');
	Route::post('/client/search', [ClientController::class, 'search'])->name('client.search');
	Route::get('/client/edit/{id}', [ClientController::class, 'edit'])->name('client.edit');
	Route::put('/client/update/{id}', [ClientController::class, 'update'])->name('client.update');	
	Route::get('/client/delete/{id}', [ClientController::class, 'delete'])->name('client.delete');

	Route::get('/advertisements', [AdvertisementController::class, 'index'])->name('advertisement');
	Route::get('/advertisement/add', [AdvertisementController::class, 'create'])->name('advertisement.add');
	Route::post('/advertisement/post', [AdvertisementController::class, 'store'])->name('advertisement.post');
	Route::post('/advertisement/search', [AdvertisementController::class, 'search'])->name('advertisement.search');
	Route::get('/advertisement/edit/{id}', [AdvertisementController::class, 'edit'])->name('advertisement.edit');
	Route::put('/advertisement/update/{id}', [AdvertisementController::class, 'update'])->name('advertisement.update');	
	Route::get('/advertisement/delete/{id}', [AdvertisementController::class, 'delete'])->name('advertisement.delete');	

	Route::get('/articles', [ArticleController::class, 'index'])->name('article');
	Route::get('/article/add', [ArticleController::class, 'create'])->name('article.add');
	Route::post('/article/post', [ArticleController::class, 'store'])->name('article.post');
	Route::post('/article/search', [ArticleController::class, 'search'])->name('article.search');
	Route::get('/article/edit/{id}', [ArticleController::class, 'edit'])->name('article.edit');
	Route::put('/article/update/{id}', [ArticleController::class, 'update'])->name('article.update');

	Route::get('/events', [EventController::class, 'index'])->name('event');
	Route::get('/event/add', [EventController::class, 'create'])->name('event.add');
	Route::post('/event/post', [EventController::class, 'store'])->name('event.post');
	Route::post('/event/search', [EventController::class, 'search'])->name('event.search');
	Route::get('/event/edit/{id}', [EventController::class, 'edit'])->name('event.edit');
	Route::put('/event/update/{id}', [EventController::class, 'update'])->name('event.update');

	Route::middleware(['allowed'])->group(function () {
		Route::get('/partners', [PartnerController::class, 'index'])->name('partner');
		Route::get('/partner/add', [PartnerController::class, 'create'])->name('partner.add');
		Route::post('/partner/post', [PartnerController::class, 'store'])->name('partner.post');
		Route::post('/partner/search', [PartnerController::class, 'search'])->name('partner.search');
		Route::get('/partner/edit/{id}', [PartnerController::class, 'edit'])->name('partner.edit');
		Route::put('/partner/update/{id}', [PartnerController::class, 'update'])->name('partner.update');
		Route::get('/partner/delete/{id}', [PartnerController::class, 'delete'])->name('partner.delete');

		Route::get('/users', [UserController::class, 'index'])->name('user');
		Route::get('/user/add', [UserController::class, 'create'])->name('user.add');
		Route::post('/user/post', [UserController::class, 'store'])->name('user.post');
		Route::post('/user/search', [UserController::class, 'search'])->name('user.search');
		Route::get('/user/edit/{id}', [UserController::class, 'edit'])->name('user.edit');
		Route::put('/user/update/{id}', [UserController::class, 'update'])->name('user.update');
		Route::get('/user/delete/{id}', [UserController::class, 'delete'])->name('user.delete');

		Route::get('/payers', [PayerController::class, 'index'])->name('payer');
		Route::get('/payer/add', [PayerController::class, 'create'])->name('payer.add');
		Route::post('/payer/post', [PayerController::class, 'store'])->name('payer.post');
		Route::post('/payer/search', [PayerController::class, 'search'])->name('payer.search');
		Route::get('/payer/edit/{id}', [PayerController::class, 'edit'])->name('payer.edit');
		Route::put('/payer/update/{id}', [PayerController::class, 'update'])->name('payer.update');
		Route::get('/payer/delete/{id}', [PayerController::class, 'delete'])->name('payer.delete');

		Route::get('/payees', [PayeeController::class, 'index'])->name('payee');
		Route::get('/payee/add', [PayeeController::class, 'create'])->name('payee.add');
		Route::post('/payee/post', [PayeeController::class, 'store'])->name('payee.post');
		Route::post('/payee/search', [PayeeController::class, 'search'])->name('payee.search');
		Route::get('/payee/edit/{id}', [PayeeController::class, 'edit'])->name('payee.edit');
		Route::put('/payee/update/{id}', [PayeeController::class, 'update'])->name('payee.update');
		Route::get('/payee/delete/{id}', [PayeeController::class, 'delete'])->name('payee.delete');

		Route::get('/invoices', [InvoiceController::class, 'index'])->name('invoice');
		Route::get('/invoice/add', [InvoiceController::class, 'create'])->name('invoice.add');
		Route::post('/invoice/post', [InvoiceController::class, 'store'])->name('invoice.post');
		Route::post('/invoice/search', [InvoiceController::class, 'search'])->name('invoice.search');
		Route::get('/invoice/edit/{id}', [InvoiceController::class, 'edit'])->name('invoice.edit');
		Route::put('/invoice/update/{id}', [InvoiceController::class, 'update'])->name('invoice.update');
		Route::get('/invoice/delete/{id}', [InvoiceController::class, 'delete'])->name('invoice.delete');
	});	
});