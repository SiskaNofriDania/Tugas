<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Mahasiswa */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Mahasiswas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="mahasiswa-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nim',
            'nama',
            'tanggal_lahir',
            'jekel',
            'id_jurusan',
            'id_prodi',
            'email:email',
            'alamat',
            [
                'attribute' => 'foto',
                'format' => 'raw',
                'value' => function($data){
                    if(!is_null($data->foto)){
                        return Html::img(Yii::$app->homeUrl . 'img/' . $data->foto,
                        ['style' => 'width:50px;height:auto;']
                    );
                    }else{
                        return NULL;
                    }
                }
            ],
        ],

    ]) ?>

</div>
