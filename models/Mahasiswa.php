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
 * @property int|null $id_prodi
 * @property string|null $email
 * @property string|null $alamat
 *
 * @property Prodi $prodi
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
            [['tanggal_lahir'], 'required'],
            [['id_prodi'], 'integer'],
            [['nim'], 'string', 'max' => 18],
            [['nama', 'tanggal_lahir'], 'string', 'max' => 50],
            [['jekel'], 'string', 'max' => 1],
            [['email', 'alamat'], 'string', 'max' => 100],
            [['id_jurusan'], 'exist', 'skipOnError' => true, 'targetClass' => Jurusan::className(), 'targetAttribute' => ['id_jurusan' => 'id']],
            [['id_prodi'], 'exist', 'skipOnError' => true, 'targetClass' => Prodi::className(), 'targetAttribute' => ['id_prodi' => 'id']],
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
        return $this->hasOne(Jurusan::className(), ['id' => 'id_jurusan']);
    }
}
