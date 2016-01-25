.class public Lcom/liquable/nemo/sticker/BaseStickerItemActivity;
.super Lcom/liquable/nemo/SingleFragmentActivity;
.source "BaseStickerItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;
    }
.end annotation


# static fields
.field static final FROM_REACTIVATION:Ljava/lang/String; = "FROM_REACTIVATION"

.field public static final ITEM:Ljava/lang/String; = "ITEM"

.field static final ITEM_CODE:Ljava/lang/String; = "ITEM_CODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/liquable/nemo/SingleFragmentActivity;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f0d04c4

    return v0
.end method

.method public hasImageLoader()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
