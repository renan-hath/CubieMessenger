.class public final Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory;
.super Ljava/lang/Object;
.source "MoaLiteParserFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;
    }
.end annotation


# direct methods
.method public static create()Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserFactory$MoaLiteParser;
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 20
    new-instance v0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserNew;

    invoke-direct {v0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserNew;-><init>()V

    .line 22
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserDefault;

    invoke-direct {v0}, Lcom/aviary/android/feather/headless/moa/moalite/MoaLiteParserDefault;-><init>()V

    goto :goto_0
.end method
