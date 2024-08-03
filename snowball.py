from flask import Flask, render_template, request, send_file
from openpyxl import load_workbook
#import ssl

import link1_pbc
import link1_design
import link1_operation
import link2_source

app = Flask(__name__)

@app.route('/')
def index():
    return render_template("index.jsp")

def main():
    app.run(host='0.0.0.0', debug=False, port=5000)
    #app.run(host='127.0.0.1', debug=False, port=8001)

@app.route('/link0')
def link0():
    print("Reload")
    return render_template('link0.jsp')

@app.route('/link1_1')
def link1():
    print("PBC Function")
    return render_template('link1_1.jsp')

@app.route('/link1_2')
def link2():
    print("RCM Function")
    return render_template('link1_2.jsp')

@app.route('/link1_3')
def link3():
    print("Paper Function")
    return render_template('link1_3.jsp')

@app.route('/link2_1')
def link2_1():
    print("Source Function")
    return render_template('link2_1.jsp')

@app.route('/pbc_generate', methods=['POST'])
def pbc_generate():

    form_data = request.form.to_dict()
    output_path = link1_pbc.pbc_generate(form_data)

    return send_file(output_path, as_attachment=True)

@app.route('/design_generate', methods=['POST'])
def design_generate():
    print("Design Generate called")

    form_data = request.form.to_dict()
    output_path = link1_design.design_generate(form_data)

    return send_file(output_path, as_attachment=True)

@app.route('/design_template_download', methods=['POST']) 
def design_template_downloade():
    print("Design Template Download called")

    form_data = request.form.to_dict()
    output_path = link1_design.design_template_download(form_data)

    return send_file(output_path, as_attachment=True)

@app.route('/paper_template_download', methods=['POST'])
def paper_template_download():

    form_data = request.form.to_dict()
    output_path = link1_operation.paper_template_download(form_data)

    param1 = form_data.get('param1')
    param2 = form_data.get('param2')

    print('output = ', output_path)
    if output_path != '':
        return send_file(output_path, as_attachment=True)
    else:
        return render_template('link3.jsp', return_param1=param1, return_param2=param2)

@app.route('/paper_generate', methods=['POST'])
def paper_generate():

    form_data = request.form.to_dict()
    output_path = link1_operation.paper_generate(form_data)

    return send_file(output_path, as_attachment=True)

@app.route('/source_analysis', methods=['POST'])
def source_analysis():

    form_data = request.form.to_dict()
    output_path = link2_source.source_analysis(form_data)

    return send_file(output_path, as_attachment=True)

if __name__ == '__main__':
    main()