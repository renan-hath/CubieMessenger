.class Lcom/liquable/nemo/profile/ProfileSettingFragment$5;
.super Ljava/lang/Object;
.source "ProfileSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ProfileSettingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$5;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$5;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->changeNickname()V

    .line 339
    return-void
.end method
