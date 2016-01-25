.class Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;
.super Ljava/lang/Object;
.source "HelpSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;

    iput-object p2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 655
    new-instance v0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;

    iget-object v1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;

    iget-object v1, v1, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;-><init>(Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 681
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerUseDevStickerConfig$1$1;->execute([Ljava/lang/Object;)V

    .line 682
    return-void
.end method
