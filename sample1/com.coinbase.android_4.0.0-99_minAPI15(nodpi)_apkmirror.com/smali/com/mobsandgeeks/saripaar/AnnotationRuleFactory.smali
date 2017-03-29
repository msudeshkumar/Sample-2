.class Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;
.super Ljava/lang/Object;
.source "AnnotationRuleFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory$1;
    }
.end annotation


# direct methods
.method private static getCheckedRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Checked;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "checked"    # Lcom/mobsandgeeks/saripaar/annotation/Checked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/Checked;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    const-class v2, Landroid/widget/Checkable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    const-string v2, "AnnotationToRuleConverter"

    const-string v3, "%s - @%s can only be applied to Checkable, its implementations and subclasses."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/mobsandgeeks/saripaar/annotation/Checked;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v2, 0x0

    .line 294
    :goto_0
    return-object v2

    .line 290
    :cond_0
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Checked;->messageResId()I

    move-result v1

    .line 291
    .local v1, "messageResId":I
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "message":Ljava/lang/String;
    :goto_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Checked;->checked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/mobsandgeeks/saripaar/Rules;->checked(Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    goto :goto_0

    .line 291
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Checked;->message()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getConfirmPasswordRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;Landroid/widget/TextView;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "confirmPassword"    # Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;
    .param p3, "passwordTextView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;",
            "Landroid/widget/TextView;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    const-string v2, "AnnotationToRuleConverter"

    const-string v3, "%s - @%s can only be applied to TextView and its subclasses."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v2, 0x0

    .line 250
    :goto_0
    return-object v2

    .line 246
    :cond_0
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;->messageResId()I

    move-result v1

    .line 247
    .local v1, "messageResId":I
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "message":Ljava/lang/String;
    :goto_1
    invoke-static {v0, p3}, Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;Landroid/widget/TextView;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    goto :goto_0

    .line 247
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;->message()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getEmailRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Email;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 9
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "email"    # Lcom/mobsandgeeks/saripaar/annotation/Email;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/Email;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 254
    const-class v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    const-string v3, "AnnotationToRuleConverter"

    const-string v4, "%s - @%s can only be applied to TextView and its subclasses."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-class v6, Lcom/mobsandgeeks/saripaar/annotation/Regex;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-object v2

    .line 259
    :cond_0
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Email;->messageResId()I

    move-result v1

    .line 260
    .local v1, "messageResId":I
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "message":Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Lcom/mobsandgeeks/saripaar/Rule;

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;Ljava/lang/String;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    aput-object v2, v3, v8

    const-string v2, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v0, v2, v7}, Lcom/mobsandgeeks/saripaar/Rules;->regex(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v0, v3}, Lcom/mobsandgeeks/saripaar/Rules;->or(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    goto :goto_0

    .line 260
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Email;->message()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getIpAddressRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/IpAddress;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 9
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ipAddress"    # Lcom/mobsandgeeks/saripaar/annotation/IpAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/IpAddress;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 268
    const-class v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    const-string v3, "AnnotationToRuleConverter"

    const-string v4, "%s - @%s can only be applied to TextView and its subclasses."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-class v6, Lcom/mobsandgeeks/saripaar/annotation/IpAddress;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-object v2

    .line 273
    :cond_0
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/IpAddress;->messageResId()I

    move-result v1

    .line 274
    .local v1, "messageResId":I
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "message":Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Lcom/mobsandgeeks/saripaar/Rule;

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;Ljava/lang/String;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    aput-object v2, v3, v8

    const-string v2, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

    invoke-static {v0, v2, v7}, Lcom/mobsandgeeks/saripaar/Rules;->regex(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v0, v3}, Lcom/mobsandgeeks/saripaar/Rules;->or(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    goto :goto_0

    .line 274
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/IpAddress;->message()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getNumberRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/NumberRule;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 14
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "numberRule"    # Lcom/mobsandgeeks/saripaar/annotation/NumberRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/NumberRule;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const-class v9, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 169
    const-string v9, "AnnotationToRuleConverter"

    const-string v10, "%s - @%s can only be applied to TextView and its subclasses."

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v9, 0x0

    .line 222
    :goto_0
    return-object v9

    .line 171
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->type()Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    move-result-object v9

    if-nez v9, :cond_1

    .line 172
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "@%s.type() cannot be null."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-class v13, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 176
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v8, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/mobsandgeeks/saripaar/Rule<*>;>;"
    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->messageResId()I

    move-result v4

    .line 178
    .local v4, "messageResId":I
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "message":Ljava/lang/String;
    :goto_1
    sget-object v9, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory$1;->$SwitchMap$com$mobsandgeeks$saripaar$annotation$NumberRule$NumberType:[I

    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->type()Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 188
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->lt()D

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmpl-double v9, v10, v12

    if-eqz v9, :cond_2

    .line 189
    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->lt()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "ltNumber":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 191
    .local v6, "number":D
    sget-object v9, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory$1;->$SwitchMap$com$mobsandgeeks$saripaar$annotation$NumberRule$NumberType:[I

    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->type()Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 198
    .end local v2    # "ltNumber":Ljava/lang/String;
    .end local v6    # "number":D
    :cond_2
    :goto_3
    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->gt()D

    move-result-wide v10

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, v10, v12

    if-eqz v9, :cond_3

    .line 199
    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->gt()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "gtNumber":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 201
    .restart local v6    # "number":D
    sget-object v9, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory$1;->$SwitchMap$com$mobsandgeeks$saripaar$annotation$NumberRule$NumberType:[I

    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->type()Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_2

    .line 208
    .end local v1    # "gtNumber":Ljava/lang/String;
    .end local v6    # "number":D
    :cond_3
    :goto_4
    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->eq()D

    move-result-wide v10

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, v10, v12

    if-eqz v9, :cond_4

    .line 209
    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->eq()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "eqNumber":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 211
    .restart local v6    # "number":D
    sget-object v9, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory$1;->$SwitchMap$com$mobsandgeeks$saripaar$annotation$NumberRule$NumberType:[I

    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->type()Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_3

    .line 219
    .end local v0    # "eqNumber":Ljava/lang/String;
    .end local v6    # "number":D
    :cond_4
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v5, v9, [Lcom/mobsandgeeks/saripaar/Rule;

    .line 220
    .local v5, "ruleArray":[Lcom/mobsandgeeks/saripaar/Rule;, "[Lcom/mobsandgeeks/saripaar/Rule<*>;"
    invoke-interface {v8, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 222
    invoke-static {v3, v5}, Lcom/mobsandgeeks/saripaar/Rules;->and(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    goto/16 :goto_0

    .line 178
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "ruleArray":[Lcom/mobsandgeeks/saripaar/Rule;, "[Lcom/mobsandgeeks/saripaar/Rule<*>;"
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->message()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 183
    .restart local v3    # "message":Ljava/lang/String;
    :pswitch_0
    const/4 v9, 0x0

    const-string v10, "\\d+"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/mobsandgeeks/saripaar/Rules;->regex(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;

    goto/16 :goto_2

    .line 185
    :pswitch_1
    const/4 v9, 0x0

    const-string v10, "[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/mobsandgeeks/saripaar/Rules;->regex(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;

    goto/16 :goto_2

    .line 192
    .restart local v2    # "ltNumber":Ljava/lang/String;
    .restart local v6    # "number":D
    :pswitch_2
    const/4 v9, 0x0

    double-to-int v10, v6

    invoke-static {v9, v10}, Lcom/mobsandgeeks/saripaar/Rules;->lt(Ljava/lang/String;I)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 193
    :pswitch_3
    const/4 v9, 0x0

    double-to-long v10, v6

    invoke-static {v9, v10, v11}, Lcom/mobsandgeeks/saripaar/Rules;->lt(Ljava/lang/String;J)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 194
    :pswitch_4
    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v9, v10}, Lcom/mobsandgeeks/saripaar/Rules;->lt(Ljava/lang/String;F)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 195
    :pswitch_5
    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/mobsandgeeks/saripaar/Rules;->lt(Ljava/lang/String;D)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 202
    .end local v2    # "ltNumber":Ljava/lang/String;
    .restart local v1    # "gtNumber":Ljava/lang/String;
    :pswitch_6
    const/4 v9, 0x0

    double-to-int v10, v6

    invoke-static {v9, v10}, Lcom/mobsandgeeks/saripaar/Rules;->gt(Ljava/lang/String;I)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 203
    :pswitch_7
    const/4 v9, 0x0

    double-to-long v10, v6

    invoke-static {v9, v10, v11}, Lcom/mobsandgeeks/saripaar/Rules;->gt(Ljava/lang/String;J)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 204
    :pswitch_8
    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v9, v10}, Lcom/mobsandgeeks/saripaar/Rules;->gt(Ljava/lang/String;F)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 205
    :pswitch_9
    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/mobsandgeeks/saripaar/Rules;->gt(Ljava/lang/String;D)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 212
    .end local v1    # "gtNumber":Ljava/lang/String;
    .restart local v0    # "eqNumber":Ljava/lang/String;
    :pswitch_a
    const/4 v9, 0x0

    double-to-int v10, v6

    invoke-static {v9, v10}, Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;I)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 213
    :pswitch_b
    const/4 v9, 0x0

    double-to-long v10, v6

    invoke-static {v9, v10, v11}, Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;J)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 214
    :pswitch_c
    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v9, v10}, Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;F)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 215
    :pswitch_d
    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;D)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 201
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 211
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static getPasswordRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Password;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "password"    # Lcom/mobsandgeeks/saripaar/annotation/Password;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/Password;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 226
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    const-string v2, "AnnotationToRuleConverter"

    const-string v3, "%s - @%s can only be applied to TextView and its subclasses."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-class v6, Lcom/mobsandgeeks/saripaar/annotation/Password;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v2, 0x0

    .line 235
    :goto_0
    return-object v2

    .line 231
    :cond_0
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Password;->messageResId()I

    move-result v1

    .line 232
    .local v1, "messageResId":I
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "message":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v6}, Lcom/mobsandgeeks/saripaar/Rules;->required(Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    goto :goto_0

    .line 232
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Password;->message()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getRegexRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Regex;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 10
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "regexRule"    # Lcom/mobsandgeeks/saripaar/annotation/Regex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/Regex;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const-class v5, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 152
    const-string v5, "AnnotationToRuleConverter"

    const-string v6, "%s - @%s can only be applied to TextView and its subclasses."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/mobsandgeeks/saripaar/annotation/Regex;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v5, 0x0

    .line 164
    :goto_0
    return-object v5

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Regex;->messageResId()I

    move-result v2

    .line 158
    .local v2, "messageResId":I
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "message":Ljava/lang/String;
    :goto_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Regex;->patternResId()I

    move-result v4

    .line 161
    .local v4, "patternResId":I
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "pattern":Ljava/lang/String;
    :goto_2
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Regex;->trim()Z

    move-result v5

    invoke-static {v1, v3, v5}, Lcom/mobsandgeeks/saripaar/Rules;->regex(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v5

    goto :goto_0

    .line 158
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "pattern":Ljava/lang/String;
    .end local v4    # "patternResId":I
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Regex;->message()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 161
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v4    # "patternResId":I
    :cond_2
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Regex;->pattern()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private static getRequiredRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Required;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "required"    # Lcom/mobsandgeeks/saripaar/annotation/Required;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/Required;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const-string v2, "AnnotationToRuleConverter"

    const-string v3, "%s - @%s can only be applied to TextView and its subclasses."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/mobsandgeeks/saripaar/annotation/Required;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v2, 0x0

    .line 123
    :goto_0
    return-object v2

    .line 119
    :cond_0
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Required;->messageResId()I

    move-result v1

    .line 120
    .local v1, "messageResId":I
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "message":Ljava/lang/String;
    :goto_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Required;->trim()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/mobsandgeeks/saripaar/Rules;->required(Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    goto :goto_0

    .line 120
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Required;->message()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getRule(Ljava/lang/reflect/Field;Landroid/view/View;Ljava/lang/annotation/Annotation;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Checked;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/Checked;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getCheckedRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Checked;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    .line 64
    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Required;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/Required;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getRequiredRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Required;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v1

    goto :goto_0

    .line 66
    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/TextRule;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/TextRule;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getTextRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/TextRule;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v1

    goto :goto_0

    .line 68
    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_2
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Regex;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/Regex;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getRegexRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Regex;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v1

    goto :goto_0

    .line 70
    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getNumberRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/NumberRule;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v1

    goto :goto_0

    .line 72
    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_4
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Password;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/Password;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getPasswordRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Password;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v1

    goto :goto_0

    .line 74
    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_5
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Email;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/Email;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getEmailRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Email;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v1

    goto :goto_0

    .line 76
    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_6
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/IpAddress;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/IpAddress;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getIpAddressRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/IpAddress;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v1

    goto :goto_0

    .line 78
    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_7
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Select;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 79
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/Select;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getSelectRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Select;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v1

    goto :goto_0

    .line 82
    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs getRule(Ljava/lang/reflect/Field;Landroid/view/View;Ljava/lang/annotation/Annotation;[Ljava/lang/Object;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "annotation"    # Ljava/lang/annotation/Annotation;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 104
    .local v0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const/4 v2, 0x0

    aget-object v1, p3, v2

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, "passwordTextView":Landroid/widget/TextView;
    check-cast p2, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;

    .end local p2    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-static {p0, p1, p2, v1}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getConfirmPasswordRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;Landroid/widget/TextView;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    .line 110
    .end local v1    # "passwordTextView":Landroid/widget/TextView;
    :goto_0
    return-object v2

    .restart local p2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    if-eqz p3, :cond_1

    array-length v2, p3

    if-nez v2, :cond_2

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getRule(Ljava/lang/reflect/Field;Landroid/view/View;Ljava/lang/annotation/Annotation;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSelectRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/Select;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 8
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "select"    # Lcom/mobsandgeeks/saripaar/annotation/Select;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/Select;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    const-class v3, Landroid/widget/Spinner;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    const-string v3, "AnnotationToRuleConverter"

    const-string v4, "%s - @%s can only be applied to Spinner, its implementations and subclasses."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/widget/Spinner;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v3, 0x0

    .line 98
    :goto_0
    return-object v3

    .line 92
    :cond_0
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Select;->messageResId()I

    move-result v1

    .line 93
    .local v1, "messageResId":I
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "message":Ljava/lang/String;
    :goto_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Select;->defaultSelection()I

    move-result v2

    .line 98
    .local v2, "unexpectedSelection":I
    invoke-static {v0, v2}, Lcom/mobsandgeeks/saripaar/Rules;->spinnerNotEq(Ljava/lang/String;I)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v3

    goto :goto_0

    .line 93
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "unexpectedSelection":I
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/Select;->message()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getTextRule(Ljava/lang/reflect/Field;Landroid/view/View;Lcom/mobsandgeeks/saripaar/annotation/TextRule;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 10
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textRule"    # Lcom/mobsandgeeks/saripaar/annotation/TextRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/annotation/TextRule;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 127
    const-class v5, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    const-string v5, "AnnotationToRuleConverter"

    const-string v6, "%s - @%s can only be applied to TextView and its subclasses."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/mobsandgeeks/saripaar/annotation/TextRule;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-object v4

    .line 132
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/mobsandgeeks/saripaar/Rule<*>;>;"
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/TextRule;->messageResId()I

    move-result v1

    .line 134
    .local v1, "messageResId":I
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "message":Ljava/lang/String;
    :goto_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/TextRule;->minLength()I

    move-result v5

    if-lez v5, :cond_1

    .line 138
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/TextRule;->minLength()I

    move-result v5

    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/TextRule;->trim()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mobsandgeeks/saripaar/Rules;->minLength(Ljava/lang/String;IZ)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/TextRule;->maxLength()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_2

    .line 141
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/TextRule;->maxLength()I

    move-result v5

    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/TextRule;->trim()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/mobsandgeeks/saripaar/Rules;->maxLength(Ljava/lang/String;IZ)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Lcom/mobsandgeeks/saripaar/Rule;

    .line 145
    .local v2, "ruleArray":[Lcom/mobsandgeeks/saripaar/Rule;, "[Lcom/mobsandgeeks/saripaar/Rule<*>;"
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    invoke-static {v0, v2}, Lcom/mobsandgeeks/saripaar/Rules;->and(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v4

    goto :goto_0

    .line 134
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "ruleArray":[Lcom/mobsandgeeks/saripaar/Rule;, "[Lcom/mobsandgeeks/saripaar/Rule<*>;"
    :cond_3
    invoke-interface {p2}, Lcom/mobsandgeeks/saripaar/annotation/TextRule;->message()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
