<?php

namespace App\Http\Middleware;

use App\Http\Controllers\GeneralConsentController;
use Closure;
use Exception;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class AuthPkmAccess
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next)
    {
       try{
        return $next($request);
       }catch(Exception $e){
            return response()->json(['message' =>  $e->getMessage()],500);
       }
        //lapisan terluar check login aksess
         
 
           
        
        
    }
}
