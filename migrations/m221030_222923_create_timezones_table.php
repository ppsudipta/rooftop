<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%timezones}}`.
 */
class m221030_222923_create_timezones_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%timezones}}', [
            'id' => $this->primaryKey(),
            'title' => $this->string(),
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
        $this->dropTable('{{%timezones}}');
    }
}
