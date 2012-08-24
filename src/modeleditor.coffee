SAMPLE_DATA = 
  "Project ID": "AGNA64"
  "Title Project": "WE CAN end violence against women in Afghanistan"
  "Short Descr Project": """The project is part of PIP P00115 which is the South Asia regional “We Can end violence against women campaign”. The objective is to challenge and change the patriarchal idea, beliefs, attitude, behaviour and practice that perpetuate violence against women. Project will take numbers of initiatives, which ultimately contribute to breaking the silence of domestic violence, which has huge prevalence all over the Afghan society. Under this project numbers of campaign initiatives will be taken to mobilise 2000 change makers and to make them aware about the issue and bring positive change in their personal attitudes, behaviours and practices."""
  "Project Starts": "1-May-07"
  "Project Ends": "31-Mar-11"
  "Level of Impact": "Country"
  "ISO CODE": "AF"
  "Loc of Impact":"Afghanistan"
  "Loc Info": " Kabul "
  "% Aim 1: Right to Sustainable Livelihoods": "-0"
  "% Aim 2: Right to Essential services": "-0"
  "% Aim 3: Right to Life and Security": "-0"
  "% Aim 4: Right to be heard": "10"
  "% Aim 5: Right to Equity": "90"
  " Expenditure prior to 2010/11": " 95,018 "
  "Expenditure in 2010/11": " 40,415 "
  " Revised Budget  in current and future years (£) ": "-0"
  "Total Value all years (£)": " 135,433 "

DEFAULT_MODEL =
  organisation: {}
  mapping:
    'iati-identifier':
      datatype: 'compound'
      'iati-field': 'iati-identifier'
      label: 'IATI Identifier'
      fields: 
        'text': {}
    'title':
      datatype: 'compound'
      'iati-field': 'title'
      label: 'Title'
      fields:
        'text': {}
    'description':
      datatype: 'compound'
      'iati-field': 'description'
      label: 'Description'
      fields:
        'text': {}
    'activity-status':
      datatype: 'compound'
      'iati-field':'activity-status'
      label: 'Activity Status'
      fields: 
        'code': {}
        'text': {}
    'activity-date-start':
      datatype: 'compound'
      label: 'Activity Start Date'
      'iati-field':'activity-date'
      fields: 
        'type':
            'constant': 'start-planned'
            'datatype': 'constant'
        'iso-date': {}
        'text': {}
    'activity-date-end':
      datatype: 'compound'
      label: 'Activity End Date'
      'iati-field':'activity-date'
      fields: 
        'type':
            'constant': 'end-planned'
            'datatype': 'constant'
        'iso-date': {}
        'text': {}
    'recipient-country':
      datatype: 'compound'
      'iati-field': 'recipient-country'
      label: 'Recipient Country'
      fields:
        'text': {}
        'code': {}
    'recipient-region':
      datatype: 'compound'
      'iati-field': 'recipient-region'
      label: 'Recipient Region'
      fields:
        'text': {}
        'code': {}
    'funding-organisation':
      datatype: 'compound'
      'iati-field': 'participating-org'
      label: 'Funding Organisation'
      fields:
        'role':
            'constant': 'funding'
            'datatype': 'constant'
        'text': {}
        'ref': {}
        'type': {}
    'extending-organisation':
      datatype: 'compound'
      'iati-field': 'participating-org'
      label: 'Extending Organisation'
      fields:
        'role':
            'constant': 'extending'
            'datatype': 'constant'
        'text': {}
        'ref': {}
        'type': {}
    'implementing-organisation':
      datatype: 'compound'
      'iati-field': 'participating-org'
      label: 'Implementing Organisation'
      fields:
        'role':
            'constant': 'implementing'
            'datatype': 'constant'
        'text': {}
        'ref': {}
        'type': {}
    sectors:
      datatype: 'compound'
      label: 'Sectors'
      'iati-field': 'sector'
      fields: 
        'text':
            'label': 'Name (text) of the sector'
        'code':
            'label': 'Code for the sector'
        'vocabulary':
            'label': 'Sector code vocabulary'
    transaction:
      datatype: 'transaction'
      label: 'Transactions'
      'iati-field':'transaction'
      'tdatafields':
          transaction_type: {
              "label":"Transaction type",
              "iati-field":"transaction-type",
              "datatype":"compound",
	          "fields": {
	              "text": {"constant":"Disbursement", "datatype":"constant"}
	              "code": {"constant":"D", "datatype":"constant"}
              }
          },
          value: {
              "label":"Transaction value",
              "iati-field":"value",
              "datatype":"compound",
	          "fields": {
	              "text": {}
	              "value-date": {}
              }
          },
          description: {
              "label":"Transaction Description",
              "iati-field":"description",
              "datatype":"compound",
	          "fields": {
	              "iso-date": {}
	              "text": {}
              }
          },
          'transaction-date': {
              "label":"Transaction Date",
              "iati-field":"transaction-date",
              "datatype":"compound",
	          "fields": {
	              "iso-date": {}
	              "text": {}
              }
          },
          'provider-org': {
              "label":"Transaction Provider",
              "iati-field":"provider-org",
              "datatype":"compound",
	          "fields": {
	              "text": {}
	              "ref": {}
	              "provider-activity-id": {}
              }
          },
          'receiver-org': {
              "label":"Transaction Receiver",
              "iati-field":"receiver-org",
              "datatype":"compound",
	          "fields": {
	              "text": {}
	              "ref": {}
	              "receiver-activity-id": {}
              }
          }


DEFAULT_FIELD_SETUP =
  'iati-identifier':
    datatype: 'compound'
    label: 'IATI Identifier'
    fields: 
        'text':
            required: true
  'other-identifier':
    datatype: 'compound'
    label: 'Other Identifier'
    fields: 
        'text':
            required: true
        'owner-name':
            required: false
        'owner-ref':
            required: false
  'title':
    datatype: 'compound'
    label: 'Title'
    fields: 
        'text':
            required: true
  'description':
    datatype: 'compound'
    label: 'Description'
    fields: 
        'text':
            required: true
  'activity-status':
    datatype: 'compound'
    label: 'Activity Status'
    fields: 
        'code':
            required: true
        'text':
            required: true
  'activity-date':
    datatype: 'compound'
    label: 'Activity Dates'
    fields: 
        'type':
            required: true
        'iso-date':
            required: true
        'text':
            required: true
  'participating-org':
    datatype: 'compound'
    label: 'Participating Organisation'
    fields: 
        'role':
            required: true
        'ref':
            required: false
        'type':
            required: false
        'text':
            required: true
  'recipient-country':
    datatype: 'compound'
    label: 'Recipient country'
    fields: 
        'code':
            required: true
        'text':
            required: true
        'percentage':
            required: false
  'recipient-region':
    datatype: 'compound'
    label: 'Recipient region'
    fields: 
        'code':
            required: true
        'text':
            required: true
        'percentage':
            required: false
  'sector':
    datatype: 'compound'
    label: 'Sectors'
    fields: 
        'vocabulary':
            required: true
        'code':
            required: false
        'text':
            required: true
        'percentage':
            required: false
  'policy-marker':
    datatype: 'compound'
    label: 'Policy Marker'
    fields: 
        'significance':
            required: true
        'vocabulary':
            required: true
        'code':
            required: true
        'text':
            required: true
  'collaboration-type':
    datatype: 'compound'
    label: 'Collaboration type'
    fields: 
        'code':
            required: true
        'text':
            required: true
  'default-flow-type':
    datatype: 'compound'
    label: 'Flow type'
    fields: 
        'code':
            required: true
        'text':
            required: true
  'default-finance-type':
    datatype: 'compound'
    label: 'Finance type'
    fields: 
        'code':
            required: true
        'text':
            required: true
  'default-aid-type':
    datatype: 'compound'
    label: 'Aid type'
    fields: 
        'code':
            required: true
        'text':
            required: true
  'default-tied-status':
    datatype: 'compound'
    label: 'Tied Aid Status'
    fields: 
        'code':
            required: true
        'text':
            required: true
  'transaction':
    datatype: 'transaction'
    label: 'Transaction'
    'tdatafields':
      'transaction-type': { 
          "datatype": "compound"
          "label": "Transaction Type"
          "iati-field": "transaction-type"
          "fields": {
              "text": {required: true}
              "code": {required: true}
          }
      },
      'value': {
          "datatype": "compound"
          "label": "Transaction Value"
          "iati-field": "value"
          "fields": {
              "text": {required: true}
              "value-date": {required: true}
              "currency": {required: false}
          }
      },
      'description': {
          "datatype": "compound"
          "label": "Transaction Description"
          "iati-field": "description"
          "fields": {
              "text": {required: true}
          }
      },
      'transaction-date': {
          "datatype": "compound"
          "label": "Transaction Date"
          "iati-field": "transaction-date"
          "fields": {
              "iso-date": {required: true}
              "text": {required: false}
          }
      },
      'provider-org': {
          "datatype": "compound"
          "label": "Transaction Provider"
          "iati-field": "provider-org"
          "fields": {
              "text": {required: false}
              "ref": {required: false}
              "provider-activity-id": {required: false}
          }
      },
      'receiver-org': {
          "datatype": "compound"
          "label": "Transaction Receiver"
          "iati-field": "receiver-org"
          "fields": {
              "text": {required: false}
              "ref": {required: false}
              "receiver-activity-id": {required: false}
          }
      }


DIMENSION_META =
  'iati-identifier':
    fixedDataType: true
    helpText: '''
              The unique IATI Identifier for your project. This must appear only once in the file: there can not be two activities with the same IATI Identifier. The Identifier is normally composed of the reporting organisation's unique reference, followed by the organisation's internal project code.<br />E.g. an Oxfam project would be <code>GB-CHC-202918-<b>P00001</b></code>, where <code>P0001</code> is the project code.
              '''
  'other-identifier':
    fixedDataType: true
    helpText: '''
              An activity can be defined and/or reported on by multiple organisations. All such identifiers can be reported here.
              '''
  title:
    fixedDataType: true
    helpText: '''
              A short, human-readable title. May be repeated for different languages. 
              '''
  description:
    fixedDataType: true
    helpText: '''
              A longer, human-readable description. May be repeated for different languages. 
              '''
  'activity-status':
    fixedDataType:true
    helpText: '''
              The current stage of the aid activity at the time the IATI information is published/updated. The stages are based on an activity lifecycle.
              '''
  'activity-date':
    fixedDataType:true
    helpText: '''
              The expected and actual start and completion dates of the activity, where start is the date of first disbursement for the activity and completion is the date of last disbursement for the activity.
              '''
  'participating-org':
    fixedDataType:true
    helpText: '''
              Organisations involved the project. Roles available for participating organisations are <code>funding</code>, <code>extending</code> and <code>implementing</code>.
	          '''
  'recipient-country':
    fixedDataType:true
    helpText: '''
              The country(ies) for whose benefit the aid flow is provided, if applicable. Repeat for each country where known.
              '''    
  'recipient-region':
    fixedDataType:true
    helpText: '''
              Supra-national: The geographical or administrative region grouping various countries (e.g. Sub-Saharan Africa, Mekong Delta). Use ‘global’ for activities benefiting substantially all developing countries. If percentages are shown for each region they must add to 100% for the activity being reported.
              '''    
  sector:
    fixedDataType:true
    helpText: '''
              The specific area(s) of the recipient's economic or social development that the transfer intends to foster. Also known as purpose codes.
              '''
  'policy-marker':
    fixedDataType:true
    helpText: '''
              Indicators tracking key policy issues. This can be also used for donor specific thematic classifications.
              '''
  'collaboration-type':
    fixedDataType:true
    helpText: '''
              Identifier to show the type of collaboration. For official donors, shows if the activity is bilateral; earmarked multilateral; core multilateral; core contributions to NGOs; core contributions to PPPs; or multilateral outflow. Allows for additional types that might apply to foundations and NGOs. 
              '''
  'default-flow-type':
    fixedDataType:true
    helpText: '''
              Identifier to show the classification of the flow. For official donors if the activity is Official Development Assistance (ODA), or Other Official Flows (OOF) [non-concessional but developmental, i.e. excluding export credits]. Allows for any types that might apply to foundations and NGOs. Default flow type can be overridden by flow type on any specific transaction within the activity.
              '''
  'default-finance-type':
    fixedDataType:true
    helpText: '''
              Identifier to show the financing mechanism of the aid activity (e.g. grant, loan, capital subscription, export credit, debt relief, equity). Default finance type can be overridden by finance type on any specific transaction within the activity.
              '''
  'default-aid-type':
    fixedDataType:true
    helpText: '''
              Identifier to show the type of assistance provided. For official donors broad categories are budget support, pooled funds, project-type interventions, experts, scholarships, debt relief, administrative costs). Allows for any types that might apply to private donors. Default aid type can be overridden by aid type on any specific transaction within the activity.
              '''
  'default-tied-status':
    fixedDataType:true
    helpText: '''
              Amounts by degree of restriction on where procurement of goods or services can take place, classified as untied (open procurement), partially tied (donor and developing countries) and tied (donor or group not including most developing countries). Note that there is both a default for the entire activity, and an optional status for each transaction, for when different contributions to an activity have different tied statuses.
              '''
  transaction:
    fixedDataType:true
    helpText: '''
              Details of each financial transaction by the donor.
              '''

FIELDS_META =
  label:
    required: true

String::dasherize = ->
  this.replace /_/g, "-"

util =
  # Turns a nested object into a flat mapping with PHP-like query string
  # parameters as keys.
  #
  # Examples
  #
  #   # Flatten a nested object structure
  #   flattenObject({'one': {'two': 'foo'}})
  #   # => Returns {'one[two]': 'foo'}
  #
  #   # Flatten an object containing arrays
  #   flattenObject({'list': [1,2,3]})
  #   # => Returns {'list[]': [1,2,3]}
  #
  # Returns the flattened object
  flattenObject: (obj) ->
    flat = {}

    pathStr = (path) ->
      ary = [path[0]]
      ary = ary.concat("[#{p}]" for p in path[1..-1])
      ary.join ''

    walk = (path, o) ->
      for key, value of o
        newpath = $.extend([], path)
        newpath.push(key)

        if $.type(value) is 'object'
          walk newpath, value
        else
          if $.type(value) is 'array'
            newpath.push ''

          flat[pathStr(newpath)] = value

    walk([], obj)
    flat

class Widget extends Delegator
  deserialize: (data) ->

class UniqueKeyWidget extends Widget
  events:
    'span click': 'onKeyClick'

  deserialize: (data) ->
    uniq = (data['dataset']?['unique_keys'] or [])

    availableKeys = []
    for k, v of data['mapping']
      if v['datatype'] isnt 'value'
        for fk, fv of v['fields']
          availableKeys.push("#{k}.#{fk}")
      else
        availableKeys.push(k)

    @keys = ({'name': k, 'used': k in uniq} for k in availableKeys)
    this.render()

  promptAddDimensionNamed: (props, thename) ->
    return false

  render: ->
    @element.html($.tmpl('tpl_unique_keys', {'keys': @keys}))

  onKeyClick: (e) ->
    idx = @element.find('span').index(e.currentTarget)
    @keys[idx]['used'] = not @keys[idx]['used']
    this.render()

    # Futzing with the DOM and adding form fields does not trigger form change
    # events, so we have to trigger them manually.
    @element.parents('form').first().change()

class DimensionWidget extends Widget
  events:
    '.add_field click': 'onAddFieldClick'
    '.field_switch_constant click': 'onFieldSwitchConstantClick'
    '.field_switch_column click': 'onFieldSwitchColumnClick'
    '.field_switch_constant_transaction click': 'onFieldSwitchConstantClickTransaction'
    '.field_switch_column_transaction click': 'onFieldSwitchColumnClickTransaction'
    '.field_rm click': 'onFieldRemoveClick'
    '.delete_dimension click': 'onDeleteDimensionClick'
    '.delete_tdatafield click': 'onDeleteTDataFieldClick'
    '.iatifield change' : 'onIATIFieldChange'
    '.column change' : 'onColumnChange'

  constructor: (name, container, options) ->
    @name = name
    el = $("<fieldset class='dimension' data-dimension-name='#{@name}'>
            </fieldset>").appendTo(container)

    super el, options

    @id = "#{@element.parents('.modeleditor').attr('id')}_dim_#{@name}"
    @element.attr('id', @id)
 
  deserialize: (data) ->
    @data = data['mapping']?[@name] or {}
    
    # Meta needs to be for the relevant iati-field 
    @iati_field = data['mapping']?[@name]['iati-field'] or ''
    @meta = DIMENSION_META[@iati_field] or {}
    
    # Prepopulate field-less non-value dimensions with a label field
    if @data.datatype isnt 'value' and 'fields' not of @data
      @data.fields = {'label': {'datatype': 'string'}}

    @element.html($.tmpl('tpl_dimension', this))
    @element.trigger('fillColumnsRequest', [@element.find('select.column')])
    @element.trigger('fillIATIfieldsRequest', [@element.find('select.iatifield')])

    formObj = {'mapping': {}}
    formObj['mapping'][@name] = @data

    for k, v of util.flattenObject(formObj)
      @element.find("[name=\"#{k}\"]").val(v)

  formFieldPrefix: (fieldName) =>
    "mapping[#{@name}][fields][#{fieldName}]"
    
  formFieldTransactionPrefix: (fieldName, transaction_field='', transaction_part='') =>
    # transaction_part is dimension (e.g. 'transactions')
    # transaction_field is the transactions sub-part (e.g. 'transaction-type')
    # fieldName is the attribute (e.g. 'text')
    "mapping[#{@name}][tdatafields][#{transaction_field}][fields][#{fieldName}]"

  formFieldRequired: (fieldName,fieldParent) =>
    if (fieldParent)
        FIELDS_META[fieldName]?['required'] or false
    else
        false

  formFieldRequired2: (fieldName, fieldParent, transactionField) =>
    #NB that fieldParent is the IATI field here
    #If it's a transaction field, look at the constituent bits of the transaction
    if (transactionField)
      if (fieldParent)
        if (DEFAULT_FIELD_SETUP[fieldParent])
          if ((DEFAULT_FIELD_SETUP[fieldParent]['tdatafields'][transactionField]) and (DEFAULT_FIELD_SETUP[fieldParent]['tdatafields'][transactionField]['fields'][fieldName]))
            DEFAULT_FIELD_SETUP[fieldParent]['tdatafields'][transactionField]['fields'][fieldName]?['required'] or false
          else
            false
        else
          false
      else
        FIELDS_META[fieldName]?['required'] or false
    else
      if (fieldParent)
        if (DEFAULT_FIELD_SETUP[fieldParent])
          if ((DEFAULT_FIELD_SETUP[fieldParent]['fields']) and (DEFAULT_FIELD_SETUP[fieldParent]['fields'][fieldName]))
            DEFAULT_FIELD_SETUP[fieldParent]['fields'][fieldName]?['required'] or false
          else
            false
        else
          false
      else
        FIELDS_META[fieldName]?['required'] or false

  onAddFieldClick: (e) ->
    name = prompt("Field name:").trim()
    row = this._makeFieldRow(name)
    row.appendTo(@element.find('tbody'))
    @element.trigger('fillColumnsRequest', [row.find('select.column')])
    return false
    
  onDeleteDimensionClick: (e) ->
    theform = @element.parents('form').first()
    $(e.currentTarget).parents('fieldset').first().remove()
    theform.change()
    return false
    
  onDeleteTDataFieldClick: (e) ->
    theform = @element.parents('form').first()
    $(e.currentTarget).parents('fieldset').first().remove()
    theform.change()
    return false
    
  onColumnChange: (e) ->
    curDimension = $(e.currentTarget).parents('fieldset').first()
    dimension_name = curDimension.data('dimension-name')
    dimension_data = curDimension.serializeObject()['mapping']
    thiscolumn = $(e.currentTarget).val()   
    construct_iatifield = this.doIATIFieldSample(dimension_name, dimension_data,thiscolumn)
    curDimension.find('span').first().html('Sample data: <code></code>')
    curDimension.find('span code').first().text(construct_iatifield)
    @element.parents('form').first().change()
    return false
  
  doIATIFieldSample: (dimension_name,dimension_data,thiscolumn) ->
    construct_iatifield = '<' + dimension_data[dimension_name]['iati-field']
    for k, v of dimension_data[dimension_name]['fields']
        if (k == 'text')
            if (v['datatype'] == 'constant')
                textdata = dimension_data[dimension_name]['fields'][k]['constant']
            else
                textdata = this.dataSample(dimension_data[dimension_name]['fields'][k]['column'])            
        else
            if (v['datatype'] == 'constant')
                samplevalue = dimension_data[dimension_name]['fields'][k]['constant']
            else
                samplevalue = this.dataSample(dimension_data[dimension_name]['fields'][k]['column'])
            construct_iatifield = construct_iatifield + ' ' + k + '="' + samplevalue + '"'
    if (textdata)
        construct_iatifield=construct_iatifield + ">" + textdata + "</" + dimension_data[dimension_name]['iati-field'] + ">"
    else
        construct_iatifield=construct_iatifield + "/>"
    return construct_iatifield
  
  # This needs to be removed - do not permit IATI Field changes (must delete and add a new dimension)
  onIATIFieldChange: (e) ->
    @element.parents('form').first().change()
    thisfield = $(e.currentTarget).val()
    @element.find('tbody tr').remove()
    thisfieldsfields = (DEFAULT_FIELD_SETUP[thisfield]['fields'])
    for k, v of thisfieldsfields
      row = this._makeFieldRowUpdate(k, thisfield, v['required'])
      row.appendTo(@element.find('tbody'))
      @element.trigger('fillColumnsRequest', [row.find('select.column')])
    return false

  onFieldRemoveClick: (e) ->
    $(e.currentTarget).parents('tr').first().remove()
    @element.parents('form').first().change()
    return false

  onFieldSwitchConstantClick: (e) ->
    curRow = $(e.currentTarget).parents('tr').first()
    curDimension = $(e.currentTarget).parents('fieldset').first()
    iatiField = $(e.currentTarget).parents('fieldset').first().find('.iatifield').val()
    row = this._makeFieldRow(curRow.data('field-name'),curDimension.data('dimension-name'), iatiField, true)
    curRow.replaceWith(row)
    @element.parents('form').first().change()
    return false

  onFieldSwitchColumnClick: (e) ->
    curRow = $(e.currentTarget).parents('tr').first()
    curDimension = $(e.currentTarget).parents('fieldset').first()
    iatiField = $(e.currentTarget).parents('fieldset').first().find('.iatifield').val()
    row = this._makeFieldRow(curRow.data('field-name'),curDimension.data('dimension-name'), iatiField, false)
    curRow.replaceWith(row)
    @element.trigger('fillColumnsRequest', [row.find('select.column')])
    @element.parents('form').first().change()
    return false

  onFieldSwitchConstantClickTransaction: (e) ->
    curRow = $(e.currentTarget).parents('tr').first()
    curDimensionPart = $(e.currentTarget).parents('fieldset')
    curDimension = $(e.currentTarget).parents('fieldset').first()
    iatiField = $(e.currentTarget).parents('fieldset').first().find('.iatifield').val()
    newrow = this._makeFieldRowTransaction(curRow.data('field-name'),curDimensionPart.data('transaction-field-type'),curDimension.data('dimension-name'),iatiField,true)
    curRow.replaceWith(newrow)
    @element.trigger('fillColumnsRequest', [newrow.find('select.column')])
    @element.parents('form').first().change()
    return false

  onFieldSwitchColumnClickTransaction: (e) ->
    curRow = $(e.currentTarget).parents('tr').first()
    curDimensionPart = $(e.currentTarget).parents('fieldset')
    curDimension = $(e.currentTarget).parents('fieldset').first()
    iatiField = $(e.currentTarget).parents('fieldset').first().find('.iatifield').val()
    newrow = this._makeFieldRowTransaction(curRow.data('field-name'),curDimensionPart.data('transaction-field-type'),curDimension.data('dimension-name'),iatiField,false)
    curRow.replaceWith(newrow)
    @element.trigger('fillColumnsRequest', [newrow.find('select.column')])
    @element.parents('form').first().change()
    return false
    
  promptAddDimensionNamed: (props, thename) ->
    return false
  
  dataSample: (columnName) ->
    (SAMPLE_DATA[columnName])

  _makeFieldRow: (name, dimensionName, iatiField, constant=false) ->
    tplName = if constant then 'tpl_dimension_field_const' else 'tpl_dimension_field'
    $.tmpl tplName,
      'fieldName': name
      'dimensionName': dimensionName
      'iatiField': iatiField
      'prefix': this.formFieldPrefix
      'required': this.formFieldRequired

  _makeFieldRowTransaction: (fieldname, transaction_field, dimension_name, iatiField, constant=false) ->
    tplName = if constant then 'tpl_dimension_field_const' else 'tpl_dimension_field'
    $.tmpl tplName,
      'fieldName': fieldname
      'transaction_field':transaction_field
      'transaction_part':dimension_name
      'prefix': this.formFieldTransactionPrefix
      'required': this.formFieldRequired
      'transaction':'yes'
      'iatiField':iatiField
      
  _makeFieldRowUpdate: (name, thisfield, requiredvar, constant=false) ->
    tplName = if constant then 'tpl_dimension_field_const' else 'tpl_dimension_field'
    $.tmpl tplName,
      'fieldName': name
      'prefix': this.formFieldPrefix
      'required': this.formFieldRequired2

class DimensionsWidget extends Delegator
  events:
    '.iati_field_add change': 'onAddIATIFieldClick'
    '.add_value_dimension click': 'onAddValueDimensionClick'
    '.add_compound_dimension click': 'onAddCompoundDimensionClick'

  constructor: (element, options) ->
    super

    @widgets = []
    @dimsEl = @element.find('.dimensions').get(0)

    @element.trigger('doFieldSelectors', 'iatifield')
    @element.trigger('doFieldSelectors', 'column')
  addDimension: (name) ->
    w = new DimensionWidget(name, @dimsEl)
    @widgets.push(w)
    return w

  removeDimension: (name) ->
    idx = null

    for w in @widgets
      if w.name is name
        idx = @widgets.indexOf(w)
        break

    if idx isnt null
      @widgets.splice(idx, 1)[0].element.remove()

  deserialize: (data) ->
    return if @ignoreParent

    dims = data['mapping'] or {}
    toRemove = []

    for widget in @widgets
      if widget.name of dims
        widget.deserialize(data)
        delete dims[widget.name]
      else
        toRemove.push(widget.name)

    # Remove any widgets not in dims
    for name in toRemove
      this.removeDimension(name)

    # Any keys left in dims need to be added
    for name, obj of dims
      this.addDimension(name).deserialize(data)

  promptAddDimension: (props) ->
    name = prompt("Give a unique name for your new dimension (letters and numbers, no spaces):")
    return false unless name
    data = {'mapping': {}}
    data['mapping'][name] = props
    iati_field = data['mapping'][name]['iati-field']
    data['mapping'][name] = DEFAULT_FIELD_SETUP[iati_field]
    data['mapping'][name]['label'] = 'User field: ' + name
    data['mapping'][name]['iati-field'] = iati_field
    this.addDimension(name.trim()).deserialize(data)

  promptAddDimensionNamed: (thename, props) ->
    alert("Column \"" + thename + "\" has been added.")
    name = thename
    return false unless name
    data = {'mapping': {}}
    data['mapping'][name] = props
    this.addDimension(name.trim()).deserialize(data)

  onAddValueDimensionClick: (e) ->
    this.promptAddDimension({'datatype': 'value'})
    return false

  onAddCompoundDimensionClick: (e) ->
    this.promptAddDimension({'datatype': 'compound'})
    return false

  onAddIATIFieldClick: (e) ->
    thefield = $(e.currentTarget).val()
    this.promptAddDimension({'datatype': 'compound','iati-field':thefield})
    $(e.currentTarget).val('')
    return false

class ModelEditor extends Delegator
  widgetTypes:
    '.unique_keys_widget': UniqueKeyWidget
    '.dimensions_widget': DimensionsWidget

  events:
    'multipleSectorsRequest': 'onMultipleSectorsSetup'
    'modelChange': 'onModelChange'
    'fillColumnsRequest': 'onFillColumnsRequest'
    'fillIATIfieldsRequest': 'onFillIATIfieldsRequest'
    '.steps > ul > li click': 'onStepClick'
    '.steps > ul > li > ul > li click': 'onStepDimensionClick'
    '.forms form submit': 'onFormSubmit'
    '.forms form change': 'onFormChange'
    '#showdebug click': 'onShowDebugClick'
    '.add_data_field click': 'onAddDataFieldClick'
    'doFieldSelectors' : 'onDoFieldSelectors'
    '#columns .availablebtn click': 'onColumnsAvailableClick'
    '#columns .allbtn click': 'onColumnsAllClick'
    '#iatifields .availablebtn click': 'onIATIFieldsAvailableClick'
    '#iatifields .allbtn click': 'onIATIFieldsAllClick'

  constructor: (element, options) ->
    super
    
    
    $('#multiple_rows_selector').html(
      "<option value=''>One row per activity</option>" + ("<option value='#{x}'>Multiple #{x} rows per activity</option>" for x in @options.iatifields when x isnt '').join('\n')
    )
    
    if (@options.model_data)
        model_data = JSON.parse(@options.model_data)
    else
        model_data = DEFAULT_MODEL
    @data = $.extend(true, {}, model_data)
    @widgets = []

    @form = $(element).find('.forms form').eq(0)

    @id = @element.attr('id')
    if not @id?
      @id = Math.floor((Math.random()*0xffffffff)).toString(16)
      @element.attr('id', @id)

    # Precompile templates
    @element.find('script[type="text/x-jquery-tmpl"]').each  ->
      $(this).template($(this).attr('id'))

    # Initialize column select boxes
    @options.columns.unshift('')
    @element.find('select.iatifield').each ->
      $(this).trigger('fillColumnsRequest', [this])

    # Initialize iati select boxes
    @options.iatifields.unshift('')
    @element.find('select.iatifield').each ->
      $(this).trigger('fillIATIfieldsRequest', [this])

    # Initialize widgets
    for selector, ctor of @widgetTypes
      @widgets.push(new ctor(e)) for e in @element.find(selector).get()

    @element.trigger 'modelChange'
    this.setStep 0

  setStep: (s) ->
    $(@element).find('.steps > ul > li')
      .removeClass('active')
      .eq(s).addClass('active')
    $(@element).find('.forms div.formpart').hide().eq(s).show()

  onStepClick: (e) ->
    idx = @element.find('.steps > ul > li').index(e.currentTarget)
    this.setStep idx
    return false

  onAddDataFieldClick: (e) ->
    thevar = $(e.currentTarget).text() 
    for w in @widgets
        w.promptAddDimensionNamed(thevar,{'datatype': 'value','column':thevar,'label':thevar})
    @data = @form.serializeObject()
    @element.trigger 'modelChange'
    $(e.currentTarget).removeClass('add_data_field available').addClass('unavailable')

  onShowDebugClick: (e) ->
    if $('#debug').hasClass('debug-shown')
      $('#debug').slideUp().removeClass('debug-shown')
    else
      $('#debug').slideDown().addClass('debug-shown')
    return false

  onFormChange: (e) ->
    return if @ignoreFormChange

    @data = @form.serializeObject()
    @form.find('.column').each -> 
        columnname = ($(this).val())
        $('#user_columns ul li a').each ->
            if ($(this).text()) == columnname
                $(this).removeClass('available').addClass('unavailable')
    
    @element.trigger('doFieldSelectors', 'iatifield')
    @element.trigger('doFieldSelectors', 'column')
        
    @ignoreFormChange = true
    @element.trigger 'modelChange'
    @ignoreFormChange = false

  onColumnsAvailableClick: (e) ->
    $('#columns ul').addClass('hideunavailable')
    $('#columns .allbtn').removeClass('fieldsbuttons-selected')
    $('#columns .availablebtn').addClass('fieldsbuttons-selected')

  onColumnsAllClick: (e) ->
    $('#columns ul').removeClass('hideunavailable')
    $('#columns .availablebtn').removeClass('fieldsbuttons-selected')
    $('#columns .allbtn').addClass('fieldsbuttons-selected')

  onIATIFieldsAvailableClick: (e) ->
    $('#iatifields ul').addClass('hideunavailable')
    $('#iatifields .allbtn').removeClass('fieldsbuttons-selected')
    $('#iatifields .availablebtn').addClass('fieldsbuttons-selected')

  onIATIFieldsAllClick: (e) ->
    $('#iatifields ul').removeClass('hideunavailable')
    $('#iatifields .availablebtn').removeClass('fieldsbuttons-selected')
    $('#iatifields .allbtn').addClass('fieldsbuttons-selected')
    
  onDoFieldSelectors: (e) ->
    $('#' + e + 's ul li code').each ->
        if ($(this).hasClass('unavailable'))
            $(this).removeClass('unavailable')
            $(this).addClass('available')
    @form.find('.' + e).each -> 
        iatiname = ($(this).val())
        $('#' + e + 's ul li code').each ->
            if ($(this).text() == iatiname)
                $(this).removeClass('available')
                $(this).addClass('unavailable')

  onFormSubmit: (e) ->
    # Conversion...
    # Need to know:
    # 1) model file
    # 2) csv file
    ## these should be in hidden inputs, and then only submit those to the API
    # 3) conversion API address should be stored by the system, and the request should be handled by the server.
    e.preventDefault();
    api_address = 'api_convert';
    model_file = $('#convert_model_file_URL').val()
    csv_file = $('#convert_csv_file_URL').val()
    $.post(api_address, { csv_file: csv_file, model_file: model_file }, complete:(result) ->
        alert(result.status);
    , "json");
    return false;

  onModelChange: () ->
    # Populate straightforward bits
    for k, v of util.flattenObject(@data)
      # FIXME? this may not deal with complex form elements such as radio
      # buttons or <select multiple>.
      @form.find("[name=\"#{k}\"]").val(v)

    # Send updated model copy to each subcomponent, as more complex
    # components may not have been correctly filled out by the above.
    for w in @widgets
      w.deserialize($.extend(true, {}, @data))

    # Update dimension list in sidebar
    dimNames = (k for k, v of @data['mapping'])
    @element.find('.steps ul.steps_dimensions').html(
      ('<li><a href="#' + "m1_dim_#{n}" + '">' + "#{@data['mapping'][n]['label']}</a>" for n in dimNames).join('\n')
    )

    $('#debug').text(JSON.stringify(@data, null, 2))


  onFillColumnsRequest: (elem) ->
    $(elem).html(
      ("<option value='#{x}'>#{x}</option>" for x in @options.columns).join('\n')
    )
  onFillIATIfieldsRequest: (elem) ->
    $(elem).html(
      ("<option value='#{x}'>#{x}</option>" for x in @options.iatifields).join('\n')
    )

$.plugin 'modelEditor', ModelEditor

this.ModelEditor = ModelEditor
