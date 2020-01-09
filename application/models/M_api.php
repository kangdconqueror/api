<?php
class M_api extends CI_Model {
      public function __construct(){
        $this->load->database();
      }
      
      //API call - get a book record by isbn
      public function view($namatabel){
		$query = $this->db->query("select * from $namatabel");
           if($query->num_rows()>0){
               return $query->result_array();
           }else{
             return 0;
           }
      }
}


/*

//API call - delete a book record
    public function delete($id){
       $this->db->where('id', $id);
       if($this->db->delete('tbl_books')){
          return true;
        }else{
          return false;
        }
   }
   
   //API call - add new book record
    public function add($data){
        if($this->db->insert('tbl_books', $data)){
           return true;
        }else{
           return false;
        }

    }
    
    //API call - update a book record
    public function update($id, $data){
       $this->db->where('id', $id);
       if($this->db->update('tbl_books', $data)){
          return true;
        }else{
          return false;
        }
    }
	
*/