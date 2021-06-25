<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "prodi".
 *
 * @property int $id
 * @property int $id_jurusan
 * @property string $prodi
 * @property string $keterangan
 */
class Prodi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'prodi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_jurusan', 'prodi', 'keterangan'], 'required'],
            [['id_jurusan'], 'integer'],
            [['prodi', 'keterangan'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_jurusan' => 'Id Jurusan',
            'prodi' => 'Prodi',
            'keterangan' => 'Keterangan',
        ];
    }

    public static function getProdiList($jurusanID, $dependent = false){
        $subCategory = self::find()
            ->select(['prodi as name', 'id'])
            ->where(['id_jurusan' => $jurusanID])
            ->asArray()
            ->all();

        return $subCategory;
    }

}
