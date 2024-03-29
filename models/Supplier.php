<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "supplier".
 *
 * @property int $id
 * @property string $nama_supplier
 * @property string $notelp
 * @property string $email
 * @property string $alamat
 */
class Supplier extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'supplier';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'nama_supplier', 'notelp', 'email', 'alamat'], 'required'],
            [['id'], 'integer'],
            [['nama_supplier'], 'string', 'max' => 50],
            [['notelp'], 'string', 'max' => 15],
            [['email', 'alamat'], 'string', 'max' => 100],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama_supplier' => 'Nama Supplier',
            'notelp' => 'Notelp',
            'email' => 'Email',
            'alamat' => 'Alamat',
        ];
    }
}
