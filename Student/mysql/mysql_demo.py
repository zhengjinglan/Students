import pymysql

class DB(object):

    def get_one(self,sql, param): #返回一条符合条件的查询结果
        db = pymysql.connect(host='127.0.0.1', user='root', password='root', database='db_student',
                             cursorclass=pymysql.cursors.DictCursor)
        cur = db.cursor()
        try:
            cur.execute(sql, param)
            results = cur.fetchall()
        except Exception as e:
            print("pymysql error:%s" % e)
        finally:
            cur.close()
            db.close()
        return results

    def get_all(self,sql): #返回所有符合条件的查询结果
        db = pymysql.connect(host= '127.0.0.1', user= 'root', password= 'root',database= 'db_student',cursorclass= pymysql.cursors.DictCursor)
        cur = db.cursor()
        try:
            cur.execute(sql)
            results = cur.fetchall()
            return results
        except Exception as e:
            print("pymysql error:%s" % e)
        finally:
            cur.close()
            db.close()

    def edit(self, sql, param): #创建主函数
        db = pymysql.connect(host='127.0.0.1', user='root', password='root', database='db_student',
                             cursorclass=pymysql.cursors.DictCursor)
        cur = db.cursor()
        try: #这里是使用try语句来尝试进行操作
            cur.execute(sql, param)
            db.commit()
            print("成功")
        except Exception as e:
            print('error', e)
            db.rollback()
        finally:
            cur.close()
            db.close()
