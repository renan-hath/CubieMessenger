.class Lcom/liquable/nemo/forum/ForumAbuseReasonAdapter;
.super Landroid/widget/BaseAdapter;
.source "ForumAbuseReasonAdapter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->values()[Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 25
    invoke-static {}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->values()[Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumAbuseReasonAdapter;->getItem(I)Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 30
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 37
    .local v1, "context":Landroid/content/Context;
    if-nez p2, :cond_0

    .line 38
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 39
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0300d9

    const/4 v7, 0x0

    invoke-virtual {v3, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 44
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .local v2, "itemView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumAbuseReasonAdapter;->getItem(I)Lcom/liquable/nemo/model/forum/ForumAbuseReason;

    move-result-object v4

    .line 46
    .local v4, "reason":Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    const v6, 0x7f08024e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, "abuseReasonTextView":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "report_reason_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-static {v1, v6}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 49
    .local v5, "stringResourceId":I
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-object v2

    .line 41
    .end local v0    # "abuseReasonTextView":Landroid/widget/TextView;
    .end local v2    # "itemView":Landroid/view/View;
    .end local v4    # "reason":Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    .end local v5    # "stringResourceId":I
    :cond_0
    move-object v2, p2

    .restart local v2    # "itemView":Landroid/view/View;
    goto :goto_0
.end method
