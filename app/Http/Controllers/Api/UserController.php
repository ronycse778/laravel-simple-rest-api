<?php

/**
 * Author: Md. Salaquzzaman <rony007bd@gmail.com>
 * Modified-date: 29 July, 2024
 * Purpose: Simple API Building
 */

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        // Fetch all users
        $users = User::all();
        return response()->json($users);
    }

    public function show($id)
    {
        // Fetch a single user by ID
        $user = User::find($id);
        if ($user) {
            return response()->json($user);
        } else {
            return response()->json(['message' => 'User not found'], 404);
        }
    }

    public function store(Request $request)
    {
        // Validate and create a new user
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required'
        ]);

        $user = User::create($request->all());
        return response()->json($user, 201);
    }

    public function update(Request $request, $id)
    {
        $user = User::find($id);
        if ($user) {
            $user->update($request->all());
            return response()->json($user);
        } else {
            return response()->json(['message' => 'User not found'], 404);
        }
    }

    public function destroy($id)
    {
        // Delete a user
        $user = User::find($id);
        if ($user) {
            $user->delete();
            return response()->json(['message' => 'User deleted']);
        } else {
            return response()->json(['message' => 'User not found'], 404);
        }
    }

    public function userList(Request $request)
    {
        $status = $request->status;
        if($status==0 || $status==''){
            $users = User::where('status',0)->orderBy('name','asc')->get();
        }else if($status==1){
            $users = User::where('status',1)->orderBy('name','asc')->get();
        }else{
            $users = User::orderBy('name','asc')->get();
        }
        return response()->json(['total' => count($users), 'result' => $users], 200);
    }
}

