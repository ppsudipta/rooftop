<?php

namespace app\modules\api\controllers;
use app\models\Users;



class CoachController extends \yii\web\Controller
{
    public $modelClass = Users::class;

/**
 * return All coach List present in DB with coach id
 * 
 * 
 * @author Sudipta Patra <ppsudipta@gmail.com>
 * 
 * @return Status
 */ 
    public function actionIndex()
    {
         return Users::find()->where(['is_deleted' => false])->all();
    }


}
