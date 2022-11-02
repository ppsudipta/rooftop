<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "availability".
 *
 * @property int $id
 * @property int|null $user_id
 * @property int|null $timezone_id
 * @property int|null $days_id
 * @property string|null $available_at
 * @property string|null $available_until
 * @property int|null $is_deleted
 * @property string $created_at
 * @property string $updated_at
 */
class Availability extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'availability';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'timezone_id', 'days_id', 'is_deleted'], 'integer'],
            [['available_at', 'available_until', 'created_at', 'updated_at'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'timezone_id' => 'Timezone ID',
            'days_id' => 'Days ID',
            'available_at' => 'Available At',
            'available_until' => 'Available Until',
            'is_deleted' => 'Is Deleted',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    public function getWeekDay(){
        return $this->hasOne(Days::className(),['id' => 'days_id'])->one();
     }
 
     public function getTimeZone(){
         return $this->hasOne(Timezones::className(),['id' => 'timezone_id'])->one();
     }

     public function getCoach(){
        return $this->hasOne(users::className(),['id' => 'user_id'])->one();
    }
}
