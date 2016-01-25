.class Lcom/liquable/nemo/setting/HelpSettingActivity$4$2$1;
.super Ljava/lang/Object;
.source "HelpSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 896
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2$1;->this$2:Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;

    iget-object v0, v0, Lcom/liquable/nemo/setting/HelpSettingActivity$4$2;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$4;

    iget-object v0, v0, Lcom/liquable/nemo/setting/HelpSettingActivity$4;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    # invokes: Lcom/liquable/nemo/setting/HelpSettingActivity;->deleteAccount()V
    invoke-static {v0}, Lcom/liquable/nemo/setting/HelpSettingActivity;->access$3300(Lcom/liquable/nemo/setting/HelpSettingActivity;)V

    .line 897
    return-void
.end method
