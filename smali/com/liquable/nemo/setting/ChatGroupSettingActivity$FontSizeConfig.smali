.class Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;
.super Ljava/lang/Object;
.source "ChatGroupSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/ChatGroupSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontSizeConfig"
.end annotation


# instance fields
.field public final checkBoxId:I

.field public final fontSize:I

.field public final layoutResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "layoutResId"    # I
    .param p2, "checkBoxId"    # I
    .param p3, "fontSize"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;->layoutResId:I

    .line 28
    iput p2, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;->checkBoxId:I

    .line 29
    iput p3, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;->fontSize:I

    .line 30
    return-void
.end method
