<?php

namespace app\modules\api\controllers;

use app\models\Availability;

use yii\db\Exception;
use yii\helpers\ArrayHelper;
use yii\web\ServerErrorHttpException;


class AvailabilityController extends \yii\web\Controller
{
    public $modelClass = Availability::class;
/**
 * return All  available time slot for a coach for particular coach
 * $fname need to pass coach first name
 * 
 * @author Sudipta Patra <ppsudipta@gmail.com>
 * 
 * @return Status
 */ 
    public function actionIndex($fname)
    {
        $request= \Yii::$app->request->get();

        $availabilibility=  Availability::find()        
              ->innerJoin('users', 'users.id = availability.user_id')
              ->where(['and', [
                 'availability.is_deleted' => false,
                 'users.is_deleted' => false,
                'users.fname' => $request['fname']
             ]])->all();
            $i=0;
             foreach ($availabilibility as $availabile) {
                    $available_at = strtotime($availabile['available_at']);
                    $available_till = strtotime($availabile['available_until']);
                    while ($available_at <= $available_till)
                    {
                        $available_from = date("G:i", $available_at);                       
                        $available_at += 30 * 60;
                        $available_until = date("G:i", $available_at);                      
                        //creating return array
                        $returnarray[$i]['available_id'] = $availabile['id'];
                        $returnarray[$i]['coach_fname'] = $availabile->Coach->fname;
                        $returnarray[$i]['weekday_name'] = $availabile->WeekDay->name;
                        $returnarray[$i]['available_from'] = $available_from;
                        $returnarray[$i]['available_until'] = $available_until;
                        $returnarray[$i]['timezone_name'] = ($availabile->getTimeZone())['title'];
                        $i++;                       
                    }
                   
                }

                // printing return array
                return $returnarray;     
    }

}
