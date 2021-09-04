<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class CustomerController extends Controller
{
    public function index()
    {
        $customers = Customer::all();
        return view('customers.index',['customers' => $customers]);
/*        return $customerDataTable->render('customers.index');*/
    }


    public function create()
    {
        return view('customers.create',['success' => false]);
    }


    public function store()
    {
        $data = \request()->validate([
            'name'=> 'required',
            'email' => 'email:rfc,dns',
            'password' => 'min:6|max:24',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg'
        ]);
            $customer = new Customer();
            $customer->name = \request('name');
            $customer->email = \request('email');
            /*$customer->password = Hash::make(\request('password'));*/
            $password = \request('password');
            $customer->password = Hash::make($password);
/*            $path = \request()->file('image')->store('/storage/images','public');
            $customer->image = $path;*/
        $path= \request()->file('image')->store('images','public');
        $customer -> image = $path;
            $customer->save();
            return view('customers.create',['success' => true]);
    }


    public function show($id)
    {
        $customer = Customer::findOrFail($id);
        return view('customers.show', ['customer' => $customer]);

    }


    public function edit($id)
    {
        $customer = Customer::findOrFail($id);
        return view('customers.edit', ['customer' => $customer, 'success' => false]);
    }


    public function update($id)
    {
        \request()->validate([
            'name'=> 'required',
            'email' => 'email:rfc,dns',
            'password' => 'min:6|max:24',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg'
        ]);
        $customer = Customer::findOrFail($id);
        $customer->name = \request('name');
        $customer->email = \request('email');
        $customer->password = Hash::make(\request('password'));
        /*$path = \request()->file('image')->store('/storage/storage/images','public');
          $customer->image = $path;*/
        $path=request()->file('image')->store('/storage/images','public');
        $customer -> image = $path;
        $customer->save();
        return view('customers.edit',['customer' => $customer,'success' => true]);

    }


    public function destroy($id)
    {
        $customer = Customer::findOrFail($id);
        $customer->delete();
        $customers = Customer::all();
        return view('customers.index', ['customers' => $customers]);
    }

    //Functions for APIs
    public function indexAPI()
    {
        return Customer::all();
    }


    public function storeAPI()
    {
        \request()->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'required'
        ]);
        return Customer::create([
            'name'=> \request('name'),
            'email' => \request('email'),
            'password' => Hash::make(\request('password')),
            'image' => ' '
        ]);
    }


    public function showAPI($id)
    {
       return Customer::findOrFail($id);

    }

    public function updateAPI($id)
    {
        \request()->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'required',
            'image' => ' '
        ]);
        $customer = Customer::findOrFail($id);
         $password = Hash::make(\request('password'));
        $customer -> update([
            'name' => \request('name'),
            'email' => \request('email'),
            'password' => $password,
            'image' => ' '
        ]);
        return $customer;
    }

    public function destroyAPI($id)
    {
        return Customer::destroy($id);

    }

    public function searchAPI($name)
    {
         $result = Customer::where('name', 'like', '%'.$name.'%') -> get();
         return $result;
    }


}
