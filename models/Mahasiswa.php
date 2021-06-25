<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "mahasiswa".
 *
 * @property int $id
 * @property string|null $nim
 * @property string|null $nama
 * @property string $tanggal_lahir
 * @property string|null $jekel
 * @property int $id_jurusan
 * @property int $id_prodi
 * @property string|null $email
 * @property string|null $alamat
 */
class Mahasiswa extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'mahasiswa';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tanggal_lahir', 'id_jurusan', 'id_prodi'], 'required'],
            [['id_jurusan', 'id_prodi'], 'integer'],
            [['nim'], 'string', 'max' => 18],
            [['nama', 'tanggal_lahir'], 'string', 'max' => 50],
            [['jekel'], 'string', 'max' => 1],
            [['email', 'alamat'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nim' => 'Nim',
            'nama' => 'Nama',
            'tanggal_lahir' => 'Tanggal Lahir',
            'jekel' => 'Jekel',
            'id_jurusan' => 'Id Jurusan',
            'id_prodi' => 'Id Prodi',
            'email' => 'Email',
            'alamat' => 'Alamat',
        ];
    }

     /**
     * Gets query for [[Prodi]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProdi()
    {
        return $this->hasOne(Prodi::className(), ['id' => 'id_prodi']);
    }


    public function getJurusan()
    {
        return $this->hasOne(Jurusan::className(), ['id_jurusan' => 'id_jurusan']);
    }

}
