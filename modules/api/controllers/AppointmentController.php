<?php

namespace app\modules\api\controllers;
use app\models\Appointments;
class AppointmentController extends \yii\web\Controller
{
    public $modelClass = Appointments::class;
    public function actionIndex()
    {
        return "working fine";
    }
    /**
 /**
 * create appointment with a particular coach
 * accept json format
 * @appointment_id need to pass appointment_id from availibility table
 * @start need to pass start timing
 * @end need to pass end timing
 * @booking_for booking for which user
 * 
 * @author Sudipta Patra <ppsudipta@gmail.com>
 * 
 * @return Status
 */ 
    public function actionCreate()
     {
        
         $model = new Appointments();
         $body = \Yii::$app->request->getBodyParams();        
         $model->appointment_id = $body['aviliable_id'];
         $model->start = $body['start'];
         $model->end = $body['end'];
       
         if ($model->save())
             return "Successfully booking created for ".$body['booking_for'];
         else
             return "Some Problem Happens.Try after sometime or contact admin";
     
     }

}
