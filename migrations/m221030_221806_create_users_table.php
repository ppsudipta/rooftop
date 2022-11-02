<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%users}}`.
 */
class m221030_221806_create_users_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%users}}', [
            'id' => $this->primaryKey(),
            'fname' => $this->string(),
            'lname'  => $this->string(),
            'is_deleted' => $this->boolean(). ' DEFAULT FALSE',
            'created_at' => $this->timestamp(). ' DEFAULT CURRENT_TIMESTAMP',
            'updated_at' => $this->timestamp(). ' DEFAULT CURRENT_TIMESTAMP'
           
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%users}}');
    }
}
