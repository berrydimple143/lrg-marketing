@extends('layouts.back')
@section('title', 'Users Page')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-table"></i> List of Users
		            <div id="mws-searchbox" class="mws-inset pull-right" style="width: 300px;">		                
		                {!! Form::open(['route' => 'user.search', 'method' => 'POST']) !!}
		                    <input type="text" name="search_text" class="mws-search-input" placeholder="Search here ...">
		                    <button type="submit" class="mws-search-submit"><i class="icon-search"></i></button>		                
		                {!! Form::close() !!}
		            </div>            
		        </span>		    	
		    </div>
		    <div class="mws-panel-toolbar">
		        <div class="btn-toolbar">
		            <div class="btn-group">		            
		            	<a href="{{ route('user.add') }}" class="btn"><i class="icol-add"></i> Add</a>                    
		                <a href="#" class="btn"><i class="icol-printer"></i> Print</a>
		                <a href="{{ route('user') }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>                
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>	                	                   
		                    <th>First Name</th>
		                    <th>Last Name</th>		                    
		                    <th>Username</th>
		                    <th>Email</th>
		                    <th>Level</th>
		                    <th>Partner</th>	
		                    <th>Affiliate ID</th>	             
		                    <th style="width: 100px;">Action</th>		                    
		                </tr>
		            </thead>
		            <tbody>            		            	
		            	@forelse($model as $user)    
		                <tr>		                	
		                    <td>{{ $user->firstname }}</td>
		                    <td>{{ $user->lastname }}</td>
		                    <td>{{ $user->username }}</td>		                    	                    
		                    <td>{{ $user->email }}</td>
		                    <td>{{ $user->level }}</td>
		                    <td>{{ $user->partner }}</td>
		                    <td>{{ $user->affid }}</td>
		                    <td style="text-align: center;">
		                        <span class="btn-group">		                            
		                            <a href="{{ route('user.edit', ['id' => $user->id]) }}" title="Edit this user" class="btn btn-small"><i class="icon-pencil"></i></a>
		                           	<a href="{{ route('user.delete', ['id' => $user->id]) }}" title="Delete this user" class="btn btn-small"><i class="icon-trash"></i></a>		                            			                            
		                        </span>
		                    </td>		                   
		                </tr>
		                @empty
		                	<tr><td colspan="8">No users yet ...</td></tr>
		                @endforelse				                              
		            </tbody>		              
		        </table>		        
		    </div>   
		    {{ $model->links() }}
		</div>
	</div>
@endsection