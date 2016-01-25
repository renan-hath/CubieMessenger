.class public interface abstract Lcom/aviary/android/feather/headless/filters/INativeFilter;
.super Ljava/lang/Object;
.source "INativeFilter.java"

# interfaces
.implements Lcom/aviary/android/feather/headless/filters/IFilter;


# virtual methods
.method public abstract getActions()Lcom/aviary/android/feather/headless/moa/MoaActionList;
.end method

.method public abstract prepare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Lcom/aviary/android/feather/headless/moa/MoaResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
