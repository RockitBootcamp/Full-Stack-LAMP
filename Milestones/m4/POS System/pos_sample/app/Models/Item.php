<?php
namespace App\Models;

use DB;

class Item extends Model {
    protected static $table = 'item';

    public function update($data=[]) {
        $this->data['id'] = $this->getId();
        DB::update('update item set name = :name, description = :description, price = :price where id = :id',
            $this->getData());
    }

    public function delete() {
        DB::delete('delete from item where id = ?', [$this->id]);
    }
}
