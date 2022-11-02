<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%appointments}}`.
 */
class m221030_223126_create_appointments_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%appointments}}', [
            'id' => $this->primaryKey(),
            'appointment_id' => $this->integer(),
            'start'       => $this->time(),
            'end'         => $this->time(),
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
        $this->dropTable('{{%appointments}}');
    }
}
