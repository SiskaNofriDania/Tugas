<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use app\models\Jurusan;
use app\models\Prodi;
/* @var $this yii\web\View */
/* @var $model app\models\Mahasiswa */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mahasiswa-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nim')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>


    <?= //$form->field($model, 'tanggal_lahir')->textInput(['maxlength' => true]) 

        $form->field($model, 'tanggal_lahir')->widget(DatePicker::classname(), [
            'options' => ['placeholder' => 'Pilih Tanggal ...'],
            'pluginOptions' => [
                'autoclose'=>true,
                'format' => 'dd-M-yyyy'
            ]
            ]); ?>


    <?= //$form->field($model, 'jekel')->textInput(['maxlength' => true]) 
    
        $form->field($model, 'jekel')->radioList(['L' => 'Laki-laki', 'P' => 'Perempuan'],[
            'item' => function($index, $label, $name, $checked, $value){
                return '<label><input type="radio" class="flat" name="'.$name.'" value="'.$value.'" '.
                ($checked ? "checked" : "").'>'.$label.'</label>';
            }
            ]
    ) ?>


<?= $form->field($model, 'id_jurusan')->dropDownList(
        ArrayHelper::map(\app\models\Jurusan::find()->all(),'id','jurusan'),
        [
            'prompt'=>'Pilih Jurusan',
            'onchange'=>'
                $.post("index.php?r=prodi/lists&id='.'"+$(this).val(),function(data)
                { $("select#prodi_id_prodi" ).html(data);
            });'
        ]
    ); ?>

     <?= $form->field($model, 'id_prodi')->dropDownList(
        ArrayHelper::map(\app\models\Prodi::find()->all(),'id','prodi'),
        [
            'prompt'=>'Pilih Prodi',
        ]
    ) ?>


    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'alamat')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
