using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class SampleClass
{
    public static SampleClass instance = new SampleClass();

    public static void SampleStaticMethod()
    {
        instance.SampleMethod();
    }

    public void SampleMethod()
    {
        SampleStaticMethod();
    }
}