.class Lcom/liquable/nemo/main/MainInviteFriendView$5;
.super Landroid/os/AsyncTask;
.source "MainInviteFriendView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainInviteFriendView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/targetedintent/TargetedAction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$mapOfInvites:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainInviteFriendView;Landroid/view/LayoutInflater;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainInviteFriendView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    iput-object p2, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->val$inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->val$mapOfInvites:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainInviteFriendView$5;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/targetedintent/TargetedAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/targetedintent/TargetedIntentMatcher;->getInviteFriendActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainInviteFriendView$5;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/targetedintent/TargetedAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "inviteActivities":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/targetedintent/TargetedAction;>;"
    const/4 v7, 0x0

    .line 148
    iget-object v6, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    invoke-virtual {v6}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 193
    :cond_0
    return-void

    .line 152
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v4, "targetActionView":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 154
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/targetedintent/TargetedAction;

    .line 155
    .local v0, "action":Lcom/liquable/nemo/targetedintent/TargetedAction;
    iget-object v6, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->val$inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030143

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 156
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f08030e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    .line 157
    invoke-virtual {v8}, Lcom/liquable/nemo/main/MainInviteFriendView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f0d030c

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 158
    invoke-virtual {v0}, Lcom/liquable/nemo/targetedintent/TargetedAction;->getAppName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    .line 156
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v6, 0x7f08030d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/targetedintent/TargetedAction;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    new-instance v6, Lcom/liquable/nemo/main/MainInviteFriendView$5$1;

    invoke-direct {v6, p0, v0}, Lcom/liquable/nemo/main/MainInviteFriendView$5$1;-><init>(Lcom/liquable/nemo/main/MainInviteFriendView$5;Lcom/liquable/nemo/targetedintent/TargetedAction;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "action":Lcom/liquable/nemo/targetedintent/TargetedAction;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    invoke-static {}, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->values()[Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_0

    aget-object v3, v8, v6

    .line 172
    .local v3, "key":Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;
    sget-object v7, Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;->invites:Lcom/liquable/nemo/main/MainInviteFriendView$InviteKey;

    if-ne v3, v7, :cond_3

    .line 173
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 174
    .restart local v5    # "view":Landroid/view/View;
    iget-object v10, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    # getter for: Lcom/liquable/nemo/main/MainInviteFriendView;->inviteFriendList:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/liquable/nemo/main/MainInviteFriendView;->access$000(Lcom/liquable/nemo/main/MainInviteFriendView;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 177
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->val$mapOfInvites:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 178
    .local v1, "found":Landroid/view/View;
    if-nez v1, :cond_5

    .line 179
    iget-object v7, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    # getter for: Lcom/liquable/nemo/main/MainInviteFriendView;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainInviteFriendView;->access$100(Lcom/liquable/nemo/main/MainInviteFriendView;)Lcom/liquable/nemo/util/Logger;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "no invite view for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", skip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 171
    .end local v1    # "found":Landroid/view/View;
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 181
    .restart local v1    # "found":Landroid/view/View;
    :cond_5
    iget-object v7, p0, Lcom/liquable/nemo/main/MainInviteFriendView$5;->this$0:Lcom/liquable/nemo/main/MainInviteFriendView;

    # getter for: Lcom/liquable/nemo/main/MainInviteFriendView;->inviteFriendList:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/liquable/nemo/main/MainInviteFriendView;->access$000(Lcom/liquable/nemo/main/MainInviteFriendView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3
.end method
