<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%days}}`.
 */
class m221030_222945_create_days_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%days}}', [
            'id' => $this->primaryKey(),
            'name' => $this->string(),
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
        $this->dropTable('{{%days}}');
    }
}
