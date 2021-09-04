<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthenticationController extends Controller
{
    public function register()
    {
        $fields = \request()->validate([
            'name' => 'required|string',
            'email' => 'required|string',
            'password' => 'required|string|confirmed'
        ]);

        $user = User::create([
            'name' => $fields['name'],
            'email' => $fields['email'],
            'password' => Hash::make($fields['password'])
        ]);

/*        $user = new User();
        $user -> name = \request('name');
        $user -> email = \request('email');
        $user -> password = \request('password');
        $user->save();*/

        $token = $user -> createToken('myAppToken') -> plainTextToken;

        $response = [
            'success' => true,
            'user' => $user,
            'token' => $token
        ];

        return response($response,201);

    }

    public function login()
    {
        $fields = \request()->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

        $user = User::where('email', $fields['email'])->first();
        if(!$user || !Hash::check($fields['password'] , $user -> password))
        {
            return response([
                'message' => 'Wrong Credentials!'
            ], 401);
        }

        $token = $user -> createToken('myAppToken') -> plainTextToken;

        $response = [
            'success' => true,
            'user' => $user,
            'token' => $token
        ];

        return response($response,201);

    }


    public function logout()
    {
        auth()->user()->tokens()->delete();
        return ['message' => 'You have been Logged Out'];
    }
}
