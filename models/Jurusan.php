<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "jurusan".
 *
 * @property int $id_jurusan
 * @property int $kode_jurusan
 * @property string $nama_jurusan
 */
class Jurusan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'jurusan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kode_jurusan', 'nama_jurusan'], 'required'],
            [['kode_jurusan'], 'integer'],
            [['nama_jurusan'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_jurusan' => 'Id Jurusan',
            'kode_jurusan' => 'Kode Jurusan',
            'nama_jurusan' => 'Nama Jurusan',
        ];
    }

    public static function getJurusan(){
        return Self::find()->select(['nama_jurusan','id_jurusan'])->indexBy('id_jurusan')->column();
    }

}
