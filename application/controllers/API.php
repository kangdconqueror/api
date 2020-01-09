<?php
require(APPPATH.'/libraries/REST_Controller.php');

class Api extends REST_Controller{
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_api');
    }

    //API -  Tampilkan semua data
    function view_get($namatabel){
        $result = $this->m_api->view($namatabel);
        if($result){
			$results = ["sEcho" => 1, "iTotalRecords" => count($result), "iTotalDisplayRecords" => count($result), "data" => $result ];
            $this->response($results, 200); 
        }else{
            $this->response("No record found", 404);
        }
    }
}

/*
     
    //API - create a new book item in database.
    function addBook_post(){
         $name      = $this->post('name');
         $price      = $this->post('price');
        
         if(!$name || !$price){
                $this->response("Enter complete book information to save", 400);
         }else{
            $result = $this->m_api->add(array("name"=>$name, "price"=>$price));
            if($result === 0){
                $this->response("Book information coild not be saved. Try again.", 404);
            }else{
                $this->response("success", 200);  
            }
        }
    }

    
    //API - update a book 
    function updateBook_put(){
         $name      = $this->put('name');
         $price     = $this->put('price');
         $id        = $this->put('id');
         
         if(!$name || !$price || !$author){
                $this->response("Enter complete book information to save", 400);
         }else{
            $result = $this->m_api->update($id, array("name"=>$name, "price"=>$price));
            if($result === 0){
                $this->response("Book information coild not be saved. Try again.", 404);
            }else{
                $this->response("success", 200);  
            }
        }
    }

    //API - delete a book 
    function deleteBook_delete()
    {

        $id  = $this->delete('id');
        if(!$id){
            $this->response("Parameter missing", 404);
        }
         
        if($this->m_api->delete($id))
        {
            $this->response("Success", 200);
        } 
        else
        {
            $this->response("Failed", 400);
        }
    }
*/