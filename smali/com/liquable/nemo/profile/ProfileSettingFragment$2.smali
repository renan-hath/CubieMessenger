.class Lcom/liquable/nemo/profile/ProfileSettingFragment$2;
.super Ljava/lang/Object;
.source "ProfileSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ProfileSettingFragment;->changeNickname()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

.field final synthetic val$editNicknameEditText:Landroid/widget/EditText;

.field final synthetic val$originalNickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    iput-object p2, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->val$editNicknameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->val$originalNickname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->val$editNicknameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "newContent":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->val$originalNickname:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$2;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;-><init>(Lcom/liquable/nemo/profile/ProfileSettingFragment$2;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 163
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/profile/ProfileSettingFragment$2$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
