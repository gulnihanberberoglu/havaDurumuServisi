package com.gulnihan.myapp;

public class SaatlikHavaDurumuModel
{
    private String merkez;

    private String baslangicZamani;

    private String istNo;

    private SaatlikHavaTahminModel[] tahmin;

    public String getMerkez ()
    {
        return merkez;
    }

    public void setMerkez (String merkez)
    {
        this.merkez = merkez;
    }

    public String getBaslangicZamani ()
    {
        return baslangicZamani;
    }

    public void setBaslangicZamani (String baslangicZamani)
    {
        this.baslangicZamani = baslangicZamani;
    }

    public String getIstNo ()
    {
        return istNo;
    }

    public void setIstNo (String istNo)
    {
        this.istNo = istNo;
    }

    public SaatlikHavaTahminModel[] getTahmin ()
    {
        return tahmin;
    }

    public void setTahmin (SaatlikHavaTahminModel[] tahmin)
    {
        this.tahmin = tahmin;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [merkez = "+merkez+", baslangicZamani = "+baslangicZamani+", istNo = "+istNo+", tahmin = "+tahmin+"]";
    }
}
