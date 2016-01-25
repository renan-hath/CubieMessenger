.class Lcom/liquable/nemo/regist/RestoreDataActivity$2;
.super Ljava/lang/Object;
.source "RestoreDataActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/RestoreDataActivity;->failAndFinishApp(Ljava/lang/Exception;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/RestoreDataActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$2;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 80
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/regist/model/RegistrationManager;->truncateNemoDb()V

    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity$2;->this$0:Lcom/liquable/nemo/regist/RestoreDataActivity;

    const/4 v1, 0x1

    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity;->step1RestoreBackup(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->access$000(Lcom/liquable/nemo/regist/RestoreDataActivity;Z)V

    .line 82
    return-void
.end method
