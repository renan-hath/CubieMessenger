.class public Lorg/apache/commons/io/filefilter/WildcardFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "WildcardFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;

.field private final wildcards:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "wildcard"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .locals 2
    .param p1, "wildcard"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lorg/apache/commons/io/IOCase;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The wildcard must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    .line 80
    if-nez p2, :cond_1

    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .end local p2    # "caseSensitivity":Lorg/apache/commons/io/IOCase;
    :cond_1
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    .line 81
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "name":Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 170
    .local v4, "wildcard":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    invoke-static {v3, v4, v5}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    const/4 v5, 0x1

    .line 174
    .end local v4    # "wildcard":Ljava/lang/String;
    :goto_1
    return v5

    .line 169
    .restart local v4    # "wildcard":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v4    # "wildcard":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 153
    .local v3, "wildcard":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    invoke-static {p2, v3, v4}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const/4 v4, 0x1

    .line 157
    .end local v3    # "wildcard":Ljava/lang/String;
    :goto_1
    return v4

    .line 152
    .restart local v3    # "wildcard":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "wildcard":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 189
    if-lez v1, :cond_0

    .line 190
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
