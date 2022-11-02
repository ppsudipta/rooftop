<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%availability}}`.
 */
class m221030_223009_create_availability_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%availability}}', [
            'id' => $this->primaryKey(),
            'user_id' => $this->integer(),
            'timezone_id' => $this->integer(),
            'days_id' => $this->integer(),
            'available_at' => $this->time(),
            'available_until' => $this->time(),
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
        $this->dropTable('{{%availability}}');
    }
}
